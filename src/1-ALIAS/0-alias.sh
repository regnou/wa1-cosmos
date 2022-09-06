#!/bin/sh
#@@@
#@@@ ALIAS [AXEL REGNOULT] [2022]
#@@@
# ### vs-code
# export codi="$(code-insiders)"
# alias codi="code-insiders"
alias codi="code"
alias rc='codi $AXELRC'
# ###

# main aliases files
# tec
. "$AXELRC/1-ALIAS/tec/alias-firebase.sh"
. "$AXELRC/1-ALIAS/tec/alias-git.sh"
. "$AXELRC/1-ALIAS/tec/alias-node.sh"
. "$AXELRC/1-ALIAS/tec/alias-unix.sh"
. "$AXELRC/1-ALIAS/tec/alias-vscode.sh"
# project
. "$AXELRC/1-ALIAS/project/tinax/alias-scrapers.sh"

### path folders
# node -p "console.log(process.env.PATH.split(':').join('\n'))"
alias PP='echo $PATH | tr ":" "\n" | sort -r --ignore-case  | fzf'
# echo $PATH | tr ':' '\n' Z
