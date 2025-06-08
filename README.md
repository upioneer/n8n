# n8n Self-Hosted Setup Guide

This repo provides a collection of step-by-step guides to help you install and manage a self-hosted instance of [n8n](https://n8n.io/), including optional integration with [Ollama](https://ollama.com/) and remote access via SSH port forwarding.

---

## Overview

All setup instructions are broken into modular guides for clarity and flexibility.

### [install_n8n.md](install_n8n.md)  
Covers the prerequisites and installation steps to get `n8n` running on a barebones Linux server using `npm`

### [autoStart.md](autoStart.md)  
Explains how to configure `n8n` to automatically start at system boot. Ideal for servers that should persist workflows across restarts

### [install_ollama.md](install_ollama.md)  
Instructions for installing `Ollama`, a lightweight local LLM runtime that can be integrated into n8n workflows using HTTP requests or custom functions

### [portForwarding.md](portForwarding.md)  
A practical guide to securely access your `n8n` web interface from a remote machine using SSH port forwarding. Includes a connection example and troubleshooting tips

---

## Quick Start

1. [install_n8n.md](install_n8n.md) to set up your server and install n8n
2. Follow [autoStart.md](autoStart.md) to run n8n automatically after reboot
3. [install_ollama.md](install_ollama.md) to run local AI models alongside your workflows
4. [portForwarding.md](portForwarding.md) to access the n8n web UI from your browser if running n8n on a headless server

---

## Repository URL

You can always access the project on GitHub

```
https://github.com/upioneer/n8n
```

---

For questions, improvements, or issues, feel free to open a pull request or start a discussion in the repo
