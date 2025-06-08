# Ubuntu Setup for n8n and Ollama (LLaMA3.2)

This guide walks you through setting up Ubuntu to run [n8n](https://n8n.io/) and [Ollama](https://ollama.com/)

---

## Prerequisites

Update your system

```bash
sudo apt-get update
sudo apt-get upgrade
```

Install Curl
```bash
sudo apt-get install -y curl
```

Install NPM
```bash
sudo apt-get install -y npm
```

Install NVM and use it to install Node.js v22 (version dependent)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Load nvm into your shell
\. "$HOME/.nvm/nvm.sh"

# Install Node.js version 22
nvm install 22
```

---

## Install Ollama with LLaMA3.2

Ollama lets you run large language models locally with a simple CLI interface.

Install Ollama:

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

Download and install the LLaMA3.2 3B model:

```bash
ollama pull llama3.2:3b
```

---

## Install and Run n8n

Install `n8n` globally using `npm`:

```bash
npm install -g n8n
```

Check if any packages require funding (optional):

```bash
npm fund
```

Start `n8n`:

```bash
n8n start
```

To stop n8n (if running in the foreground or background), you can use:

```bash
# Press Ctrl+C if running in the foreground
# or stop the background process accordingly
# Or with systemd if you have it set up:
# sudo systemctl stop n8n.service
```
