#!/usr/bin/env bash
set -e

echo "Installing oh-my-posh"

# install oh-my-posh binary
curl -fsSL https://ohmyposh.dev/install.sh | bash -s

echo "Installing theme"

mkdir -p "$HOME/.poshthemes"
curl -fsSL \
  https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/hul10.omp.json \
  -o "$HOME/.poshthemes/hul10.omp.json"

echo "Done"
