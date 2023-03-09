# My bash prompt with GIT branch:
# Custom bash prompt via kirsle.net/wizards/ps1.html
PS1='\n\[$(tput setaf 2)\]\u@\h \[$(tput setaf 3)\]\w \[$(tput setaf 7)\]$(__git_ps1)\n> \[$(tput sgr0)\]'

# Tail with colour (better visibility)
t() {
    tail -50f $1 | perl -ple 's/^.*SEVERE.*$/\e[1;37;45m$&\e[0m/ || s/^.*ERROR.*$/\e[1;37;41m$&\e[0m/ || s/^.*WARN.*$/\e[1;33;40m$&\e[0m/'
}
