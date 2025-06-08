# Accessing a Remote Web UI with SSH Port Forwarding

This guide explains how to **securely access a web-based application** (like `n8n`) running on a remote, CLI-only server using **port forwarding**. It also walks you through key troubleshooting steps in case the connection fails.

---

## 1. The SSH Port Forwarding Command (`-L`)

SSH port forwarding creates a secure tunnel from your **local computer** to a **remote server**, making a web service on the server appear as if it's running locally.

### Command Syntax

```bash
ssh -L <local_port>:localhost:<remote_port> <user>@<server_ip>
```

- `local_port`: Port on your **local computer** (e.g., `8080`)
- `localhost`: Always `localhost` — refers to the **server’s loopback interface**
- `remote_port`: The port the app is listening on the **server** (e.g., `5678` for `n8n`)

### Example for n8n

To forward remote port `5678` to local port `8080`:

```bash
ssh -L 8080:localhost:5678 automan@2.2.0.181
```

---

## How to Access the Web UI

Once the SSH connection is active, **open a browser** on your local machine and visit:

```
http://localhost:8080
```

Your request is now **securely tunneled** to the `n8n` service running on the remote server.

---

## 2. Troubleshooting SSH Connection Errors

### ❌ Problem: `ssh: connect to host ... Connection refused`

This error means the server is reachable, but it's rejecting SSH connections.

---

### Step 1: Check if OpenSSH Server is Installed and Running

From the hosting provider’s console or terminal:

```bash
sudo systemctl status ssh
```

- ✅ **Running**: You'll see `Active: active (running)`
- ❌ **Not running**: You'll see `inactive (dead)` or a "not found" message

---

### Step 2: Install OpenSSH Server (if needed)

If the SSH service isn’t running:

```bash
sudo apt update
sudo apt install openssh-server
```

Then enable and start it:

```bash
sudo systemctl enable ssh
sudo systemctl start ssh
```

Try your `ssh -L` command again.

---

### Step 3: Check the Server’s Firewall (`ufw`)

Ensure SSH isn’t being blocked:

```bash
sudo ufw status
```

If `ufw` is **active** and port 22 is **not allowed**, run:

```bash
sudo ufw allow ssh
```

---

### Step 4: Check the Cloud Provider Firewall / Security Group

Cloud platforms like AWS, Azure, and GCP have **network-level firewalls**.

Look for:

- **AWS**: Security Groups
- **GCP**: VPC Firewall Rules
- **Azure**: Network Security Groups (NSG)

Make sure there is an **inbound rule** allowing:

```
Port: 22
Protocol: TCP
Source: your IP (or 0.0.0.0/0 for testing)
```

---

✅ Once SSH is working and your port is forwarded, you can use the remote web interface like it’s local
