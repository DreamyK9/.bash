# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Pull config updates
~/Scripts/pull-configs > /dev/null

# ----------------------------------------------
# User specific environment and startup programs

# If in tmux session, run neofetch
if [ -n "$TMUX" ]; then
    neofetch
fi

