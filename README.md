# n8n Self-Hosted Setup Guide

This repository provides a collection of concise, step-by-step guides to help you install and manage a self-hosted instance of [n8n](https://n8n.io/), including optional integration with [Ollama](https://ollama.com/) and remote access via SSH port forwarding.

Whether you're deploying to a cloud VM or a local server, this repo will walk you through the entire process from installation to automation

---

## Overview

All setup instructions are broken into modular guides for clarity and flexibility.

### ➤ [install_n8n.md](install_n8n.md)  
Covers the prerequisites and installation steps to get `n8n` running on a barebones Linux server using `npm`

### ➤ [autoStart.md](autoStart.md)  
Explains how to configure `n8n` to automatically start at system boot. Ideal for servers that should persist workflows across restarts

### ➤ [install_ollama.md](install_ollama.md)  
Instructions for installing `Ollama`, a lightweight local LLM runtime that can be integrated into n8n workflows using HTTP requests or custom functions

### ➤ [portForwarding.md](portForwarding.md)  
A practical guide to securely access your `n8n` web interface from a remote machine using SSH port forwarding. Includes a connection example and troubleshooting tips

---

## Quick Start

1. Start with the [install_n8n.md](install_n8n.md) guide to set up your server and install n8n.
2. Follow [autoStart.md](autoStart.md) if you want n8n to run automatically after reboot.
3. (Optional) Use [install_ollama.md](install_ollama.md) to run local AI models alongside your workflows.
4. If you're using a headless server, refer to [portForwarding.md](portForwarding.md) to access the n8n web UI from your browser.

---

## Repository URL

You can always access the project on GitHub

```
https://github.com/upioneer/n8n
```

---

For questions, improvements, or issues, feel free to open a pull request or start a discussion in the repo
