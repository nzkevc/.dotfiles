_key="$HOME/.ssh/id_ed25519_personal"
[ -f "$_key" ] || { unset _key; return; }

# Start an agent only if this shell doesn't already have one
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)" > /dev/null
fi
ssh-add "$_key" > /dev/null 2>&1

unset _key
