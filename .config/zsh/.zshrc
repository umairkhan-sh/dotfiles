setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt no_extended_history

bindkey -e

alias l="eza --icons -1"
alias ls="eza --icons -1"
alias la="eza --icons -1a"
alias ll="eza --icons -l"
alias lla="eza --icons -la"
alias lt="eza --icons -T --level 2"
alias lta="eza --icons -T --level 2 -a"

alias cat="bat"

alias cl="clear"

alias v="nvim"
alias sv="sudo nvim"

alias z="zellij"

alias h='eval "$(fzf < ~/.zsh-history)"'

eval "$(starship init zsh)"
