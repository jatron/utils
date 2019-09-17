# Sort by file size
alias lt='ls --human-readable --size -1 -S --classify'
# View only mounted drives
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
# Find a command in your grep history
alias gh='history|grep'
# Sort by modification time
alias left='ls -t -1'
# Count files
alias count='find . -type f | wc -l'
# Create a python virtual environment
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'
# Add a copy progress bar
alias cpv='rsync -ah --info=progress2'
# Protect yourself from file removal accidents
alias tcn='mv --force -t ~/.local/share/Trash '
# Simplify your git workflow
alias startgit='cd `git rev-parse --show-toplevel` && git checkout master && git pull'
alias cg='cd `git rev-parse --show-toplevel`'
alias g='git'
# Avoid rebooting your machine
alias reboot='echo noooooooooooO!'

# Sources of bash aliases
# https://opensource.com/article/19/7/bash-aliases

