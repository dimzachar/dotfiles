#!/bin/bash

# Install oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s

# Add to PATH and configure in .bashrc
cat >> ~/.bashrc << 'EOF'

# Oh My Posh
export PATH=$HOME/.local/bin:$PATH
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/hul10.omp.json)"

# fzf
eval "$(fzf --bash)"

# History
HISTSIZE=4096
HISTFILESIZE=4096

# Aliases
alias cn='rm -rf .next'
alias nodemodules='rm -rf node_modules'
EOF

# Install fzf
sudo apt-get update && sudo apt-get install -y fzf
