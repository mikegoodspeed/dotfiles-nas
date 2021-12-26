if [ -x /usr/local/bin/zsh ]; then
    export SHELL=/usr/local/bin/zsh
    exec $SHELL
fi
