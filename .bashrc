# Oh My Posh prompt
eval "$(oh-my-posh init bash --config ~/.poshthemes/hul10.omp.json)"

# fzf integration (Ctrl+R for fuzzy history search)
eval "$(fzf --bash)"

# Increase history size
HISTSIZE=4096
HISTFILESIZE=4096

# Aliases (equivalent to your PowerShell ones)
alias cn='rm -rf .next'
alias nodemodules='rm -rf node_modules'
