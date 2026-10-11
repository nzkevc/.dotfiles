# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


# User specific aliases and functions
if [ -d "$HOME"/.bashrc.d ]; then
    for rc in "$HOME"/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

