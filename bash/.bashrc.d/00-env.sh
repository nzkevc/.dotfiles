# PATH
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# History
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend

# Point docker clients at rootless podman
export DOCKER_HOST="unix:///run/user/$UID/podman/podman.sock"
