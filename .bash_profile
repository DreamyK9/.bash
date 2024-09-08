# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Pull config updates
if [ ! -f /tmp/wolf-user-configs-fetched ]; then
    touch /tmp/wolf-user-configs-fetched
    ~/Scripts/pull-configs > /dev/null
fi

# ----------------------------------------------
# User specific environment and startup programs

# If in tmux session, run neofetch
if [ -n "$TMUX" ]; then
    neofetch
fi

