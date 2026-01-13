#!/bin/bash

# Install oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s

# Create theme directory and download theme
mkdir -p ~/.poshthemes
curl -o ~/.poshthemes/hul10.omp.json https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/hul10.omp.json

# Install fzf
sudo apt-get update && sudo apt-get install -y fzf
