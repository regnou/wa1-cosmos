#!/bin/sh
#@@@
#@@@ ALIAS [AXEL REGNOULT] [2022]
#@@@
alias codi="code"
alias rc='codi $AXELRC'
# by-tec
. "$AXELRC/1-ALIAS/tec/alias-firebase.sh"
. "$AXELRC/1-ALIAS/tec/alias-git.sh"
. "$AXELRC/1-ALIAS/tec/alias-node.sh"
. "$AXELRC/1-ALIAS/tec/alias-unix.sh"
. "$AXELRC/1-ALIAS/tec/alias-vscode.sh"
# by-project
. "$AXELRC/1-ALIAS/project/alias-project.sh"
. "$AXELRC/1-ALIAS/project/tinax/alias-scraper.sh"
# path folders
alias PP='echo $PATH | tr ":" "\n" | sort -r --ignore-case  | fzf'
# echo $PATH | tr ':' '\n' Z
# node -p "console.log(process.env.PATH.split(':').join('\n'))"
