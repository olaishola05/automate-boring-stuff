#!/bin/bash

alias dev='cd Webdev && cd' 
alias c='clear'
alias ce='code . && exit'

# Version control
alias gcl="git clone" 
alias gb="git branch"
alias gs="git status"
alias ga="git add"
alias gal="git add ."
alias gcm='git commit -am'
alias gpl='git pull origin main'
alias gp="git push -u origin"
alias gcb="git checkout -b"
alias gdb='git branch -D' #delete branch
alias grm='git branch -a' #get remote branch


#Working Directories
alias b='cd ..'
alias tmp='cd Webdev/backendApis && code . && exit'
alias tuts='cd Webdev/backend-w-John/nod-exp-mong && code .'

gitcombo(){
    read -p 'Enter branch name: ' name
    gal
    message=""
    for arg in "$@"
    do
        message+="$arg"
        message+=" "
    done
    gcm "$message"
    gp $name
}

pro_init(){
    npm init -y
}

install(){
    npm install && npm start
}

# creating project folder
alias mkd='cd Webdev && mkdir' 
alias gi='git init'
alias starters='touch app.js index.html style.css && mkdir images && mkdir utils'
alias devcenter='cd Webdev'


web(){
    read -p 'Enter Project directory name: ' name
    if [ $PWD == ~/Webdev ]; then
        mkdir $name && cd $name && gi && starters && ce
    else
        mkd $name && cd $name && gi && starters && ce
    fi
}


# Node folder structure
alias mvc='mkdir models controllers public db middleware errors routes && touch app.js'

node_pro(){
    read -p 'Enter Project directory name: ' name
    if [ $PWD == ~/Webdev ]; then
        mkdir $name && cd $name && gi && $init && mvc && ce
    else
        mkd $name && cd $name && gi && $init && mvc && ce
    fi
}

#Utilities
alias update="sudo apt update && sudo apt upgrade"
alias edbash="code . ~/.custom_aliases"
alias r="source ~/.custom_aliases"

HISTTIMEFORMAT="%F %T "
HISTCONTROL=ignoredups
HISTSIZE=2000
HISTFILESIZE=2000
alias h='history'
alias e='exit'

function download(){
    sudo apt install $1
}


stopcoding(){
    pkill code
    pkill chrome
    pkill rhythmbox 
    pkill gnome-terminal- 
}


function daily(){
    # work in progress
}

cl(){
    cd $1
    ls -la
}

# View the calender by typing the first three letters of the month.
alias jan='cal -m 01'
alias feb='cal -m 02'
alias mar='cal -m 03'
alias apr='cal -m 04'
alias may='cal -m 05'
alias jun='cal -m 06'
alias jul='cal -m 07'
alias aug='cal -m 08'
alias sep='cal -m 09'
alias oct='cal -m 10'
alias nov='cal -m 11'
alias dec='cal -m 12'

# download and covert youtube video to mp3
function convert_to_mp3(){
    youtube-dl --extract-audio --audio-format mp3 $1
}


#System
alias diskusage="df -h"
alias folderusage="du -ch"
alias totalfolderusage="du -sh"


#getting system info
# printf "\n"
# if [[! $(curl ifconfig.me)]];then
#     printf "   %s\n" "IP ADDR: Not connected"
# else
#      printf "   %s\n" "IP ADDR: $(curl ifconfig.me)"
# fi
printf "   %s\n" "USER: $(echo Welcome $USER)"
printf "   %s\n" "DATE: $(date)"
printf "   %s\n" "UPTIME: $(uptime -p)"
printf "   %s\n" "HOSTNAME: $(hostname -f)"

