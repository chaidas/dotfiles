# Print each PATH entry on a separate line
# Inspired by: https://github.com/mathiasbynens/dotfiles/blob/master/.aliases
alias path='echo -e ${PATH//:/\\n}'

# Reset, clean and pull current branch
alias gr='git reset --hard HEAD && git clean -df && git pull'

