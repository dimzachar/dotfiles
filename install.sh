#!/bin/bash

# Install fzf first
sudo apt-get update && sudo apt-get install -y fzf

# Install oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s

# Add to PATH and configure in .bashrc
cat >> ~/.bashrc << 'EOF'

# Oh My Posh
export PATH=$HOME/.local/bin:$PATH
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/hul10.omp.json)"

# Enable bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# fzf
if command -v fzf &> /dev/null; then
    eval "$(fzf --bash)"
fi

# History
HISTSIZE=4096
HISTFILESIZE=4096
HISTCONTROL=ignoredups:erasedups
shopt -s histappend

# Aliases
alias cn='rm -rf .next'
alias nodemodules='rm -rf node_modules'
EOF
