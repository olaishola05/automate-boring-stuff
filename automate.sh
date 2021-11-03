#!/bin/bash

alias dev='cd Webdev'
alias c='clear'


# Version control
alias gcl="git clone" $1
alias gb="git branch"
alias gs="git status"
alias ga="git add"
alias gal="git add ."
alias gcm='git commit -am'
alias gpl='git pull origin main'
alias gp="git push -u origin" $1
alias gcb="git checkout -b" $1
alias gdb='git branch -d' #delete branch
alias grm='git branch -a' #get remote branch

gitcombo(){
    gal
    message=''
    for arg in "$@"
    do
        message +="$arg"
        message +=" "
    done
    gcm
    gp
}



#Utilities
alias update="sudo apt update && sudo apt upgrade"
alias edbash="code ~/.custom_aliases"
alias reload="source ~/.custom_aliases"

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

chrome='/opt/google/chrome/chrome'

function daily(){
   open $chrome
    # tmp
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

#Directories
alias up='cd ..'
alias tmp='cd Webdev/backendApis && code . && exit'

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
printf "   %s\n" "USER: $(echo $USER)"
printf "   %s\n" "DATE: $(date)"
printf "   %s\n" "UPTIME: $(uptime -p)"
printf "   %s\n" "HOSTNAME: $(hostname -f)"

