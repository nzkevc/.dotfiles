[ -f ~/.git-prompt.sh ] || return
. ~/.git-prompt.sh

export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUPSTREAM="auto"

blue='\[\e[38;2;166;219;255m\]'   #A6DBFF
yellow='\[\e[38;2;252;224;148m\]' #FCE094
reset='\[\e[0m\]'

PROMPT_COMMAND=("__git_ps1 '${blue}\u@\h: ${yellow}\W${reset}' ' \\$ '")

unset blue yellow reset
