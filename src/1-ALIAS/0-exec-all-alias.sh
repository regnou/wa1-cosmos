#!/bin/sh
#@@@
#@@@ ALIAS [AXEL REGNOULT] [2022]
#@@@

# by-Boost
. "$AXELRC/1-ALIAS/1-devBoost/alias-devBoost.sh"

# by-tec
. "$AXELRC/1-ALIAS/2-tec/alias-firebase.sh"
. "$AXELRC/1-ALIAS/2-tec/alias-git.sh"
. "$AXELRC/1-ALIAS/2-tec/alias-node-npm.sh"
. "$AXELRC/1-ALIAS/2-tec/alias-scraper.sh"
. "$AXELRC/1-ALIAS/2-tec/alias-unix.sh"
. "$AXELRC/1-ALIAS/2-tec/alias-vscode.sh"

# by-cli
. "$AXELRC/1-ALIAS/3-cli/alias-CLI-ms-scraper.sh"
. "$AXELRC/1-ALIAS/3-cli/alias-CLI-tinax-scraper.sh"
export GENESIS="/Users/yo/0HOME/0WEBAGENCY/0GH/chap2-genesis"
alias sbg=". $GENESIS/src/2-alfred-scripts/alias-cli.sh"

# path folders
alias PP='echo $PATH | tr ":" "\n" | sort -r --ignore-case  | fzf'
# echo $PATH | tr ':' '\n' Z
#  $$$ node -p "console.log(process.env.PATH.split(':').join('\n'))"
