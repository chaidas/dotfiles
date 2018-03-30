#!/usr/bin/env bash

SSH_ENV=$HOME/.ssh/environment
 
# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > ${SSH_ENV}
    echo succeeded
    chmod 600 ${SSH_ENV}
    . ${SSH_ENV} > /dev/null
    /usr/bin/ssh-add                                                    
}
  
if [ -f "${SSH_ENV}" ]; then
    . ${SSH_ENV} > /dev/null
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# My bash prompt with GIT branch:
# Custom bash prompt via kirsle.net/wizards/ps1.html
PS1='\n\[$(tput setaf 2)\]\u@\h \[$(tput setaf 3)\]\w \[$(tput setaf 7)\]$(__git_ps1)\n> \[$(tput sgr0)\]'
