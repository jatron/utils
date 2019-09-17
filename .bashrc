if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi

if [ -d $HOME/bin ]; then
    PATH=$HOME/bin:$PATH
fi

