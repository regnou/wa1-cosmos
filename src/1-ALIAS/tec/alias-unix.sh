#!/bin/sh
#@@@
#@@@ unix
#@@@

# clear history
# history -c (bash)
# history -p (zsh)
# history -E -10
alias cc="history -p"

# change quickly color of the term
alias red='echo -e "\033]6;1;bg;red;brightness;255\a"'
alias blue='echo -e "\033]6;1;bg;blue;brightness;255\a"'
alias green='echo -e "\033]6;1;bg;green;brightness;255\a"'
alias purple='echo -e "\033]6;1;bg;purple;brightness;255\a"'
alias rose='echo -e "\033]6;1;bg;rose;brightness;255\a"'
alias orange='echo -e "\033]6;1;bg;orange;brightness;255\a"'
alias cyan='echo -e "\033]6;1;bg;cyan;brightness;255\a"'

# Debug
alias ECHO="echo '........................................' && echo && echo "
alias ECHOO="echo && echo && echo '........................................'"

# Process
# ps -ef | grep chrome | grep -v grep | awk '{print $2}' | xargs kill -9
# ps -ef | grep 8080 | grep -v grep | awk '{print $2}' | xargs kill -9
alias killl='kill-port --port 8000,9099,5001,8080,5033,9000,5000,8085,9199,4000,4400,4500'

# Npm
alias Z='| fzf'
# npm search react Z

# Dir
alias cdcd='cd ..'
alias dll='cd ~/0HOME/1DL'

# Unix
alias sbb='. $HOME/.zshrc'
alias cat='bat '
alias mann='tldr'
alias l='exa' # https://github.com/ogham/exa
alias ml='exa -Flah --git --tree --level=1 --group-directories-first'
alias ls='ml | h -n "src|public|package.json" "rollup.config.js|tailwind.config.js|tsconfig.json" "firebase.json|.firebaserc|firebase" ".gitignore|.git" | h "\.svelte" "\.ts" "\.js" "\.json" "\.sh"  "\.css" "\.html" "build"'
# alias ll='exa -Flah --git --tree --level=6 --group-directories-first'
alias ll='exa -Flah --git --tree --level=1 --group-directories-first'
alias la='exa -Flh --git --tree --level=1 --group-directories-first'
alias lla='exa -Flh --git --tree --level=6 --group-directories-first'

# Danger
alias rmf='rm -rf'

# FZF
# npm search
# npm search react | fzf

# grep
# grep -irl react * | fzf
