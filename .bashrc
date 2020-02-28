if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi

if [ -d $HOME/bin ]; then
    PATH=$HOME/bin:$PATH
fi

alias awfd='adb wait-for-device root && adb wait-for-device shell'
alias greprex='grep -rn --exclude-dir=".*"'
alias reboot='echo noooooooooooO!'

