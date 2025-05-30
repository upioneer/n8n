########## prerequisites

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y curl
sudo apt-get install -y npm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

\. "$HOME/.nvm/nvm.sh"

nvm install 22

########## ollama

curl -fsSL https://ollama.com/install.sh | sh
ollama pull llama3.2:3b

########## n8n
npm install -g n8n
npm fund
n8n start
# n8n stop
