# Ubuntu Setup for Ollama (LLaMA3.2)

This guide walks you through setting up Ubuntu to run [Ollama](https://ollama.com/)

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
