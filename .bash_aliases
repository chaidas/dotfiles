# Print each PATH entry on a separate line
# Inspired by: https://github.com/mathiasbynens/dotfiles/blob/master/.aliases
alias path='echo -e ${PATH//:/\\n}'

# Git aliases
alias gr='git reset --hard HEAD && git clean -df && git pull'
alias grm='git reset --hard HEAD && git clean -df && git checkout master && git pull'
alias ll='ls -alF'