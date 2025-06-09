# Automate n8n Startup on Ubuntu with a systemd Service

This guide provides complete instructions on how to create a `systemd` service on an Ubuntu system.

This service will automatically launch the n8n application every time the system boots up, saving you from having to manually start it from the terminal.

---

## Instructions

### Step 1: Find the Full Path to the n8n Executable

First, you need to identify the exact location of the `n8n` binary on your system. This is crucial because the service needs an absolute path to execute the command. Open your terminal and run:

```bash
which n8n
```

The output will be the full path to the executable. It will look something like:

```
/home/your_username/.nvm/versions/node/v18.17.1/bin/n8n
```

---

### Step 2: Create the systemd Service File

Use a command-line text editor like `nano` to create the service definition file with administrative permissions:

```bash
sudo nano /etc/systemd/system/n8n.service
```

This command opens an empty file in the nano editor

---

### Step 3: Add the Service Configuration

Copy and paste the configuration below into the editor

> ⚠️ **IMPORTANT**
> 
> Replace `username` with your actual Ubuntu username
> 
> Replace `/path/to/your/n8n` with the full path to the `n8n` binary from Step 1
>
> Take note of your time zone in the Environment tag

```ini
[Unit]
Description=n8n Workflow Automation
After=network.target

[Service]
User=username
Group=username
Type=simple
ExecStart=/path/to/your/n8n start
Restart=on-failure
RestartSec=5s
Environment=GENERIC_TIMEZONE=America/Chicago

[Install]
WantedBy=multi-user.target
```

Save and exit nano
Press `Ctrl + X`, then `Y`, and `Enter`

---

### Step 4: Enable and Start the New Service

Reload the systemd manager configuration

```bash
sudo systemctl daemon-reload
```

Enable the service to start on boot

```bash
sudo systemctl enable n8n.service
```

Start the service immediately

```bash
sudo systemctl start n8n.service
```

---

## Managing the n8n Service

**Check the status**
  ```bash
  sudo systemctl status n8n.service
  ```

**Stop the service**
  ```bash
  sudo systemctl stop n8n.service
  ```

**Restart the service**
  ```bash
  sudo systemctl restart n8n.service
  ```

**View live logs**
  ```bash
  sudo journalctl -u n8n.service -f
  ```
