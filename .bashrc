# ---- OH MY POSH ----
if command -v oh-my-posh >/dev/null 2>&1 && \
   [ -f "$HOME/.poshthemes/hul10.omp.json" ]; then
  eval "$(oh-my-posh init bash --config $HOME/.poshthemes/hul10.omp.json)"
fi

# ---- FZF ----
if command -v fzf >/dev/null 2>&1; then
  eval "$(fzf --bash)"
fi

# ---- HISTORY ----
HISTSIZE=4096
HISTFILESIZE=4096

# ---- ALIASES ----
alias cn='rm -rf .next'
alias nodemodules='rm -rf node_modules'
