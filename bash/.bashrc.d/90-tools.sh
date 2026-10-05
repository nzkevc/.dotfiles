command -v fzf > /dev/null && eval "$(fzf --bash)"
command -v mise > /dev/null && eval "$(mise activate bash)"

command -v zoxide > /dev/null && eval "$(zoxide init --cmd cd bash)"
