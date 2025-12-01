# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc


# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH


# Prompt
. ~/.git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUPSTREAM="auto"
RED='\e[31m'
CYAN='\e[36m'
RESET='\e[0m'
PROMPT_COMMAND="__git_ps1 '${CYAN}\u@\h: ${RED}\W${RESET}' ' \\$ '"


# SSH-agent
eval "$(ssh-agent -s)" > /dev/null
ssh-add "$HOME/.ssh/id_ed25519_personal" > /dev/null 2>&1


# Tool activation
eval "$(zoxide init --cmd cd bash)"
eval "$(mise activate bash --shims)"

