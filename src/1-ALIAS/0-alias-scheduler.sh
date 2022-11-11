#!/bin/sh
#@@@
#@@@ ALIAS [AXEL REGNOULT] [2022]
#@@@

# by-tec
. "$AXELRC/1-ALIAS/tec/alias-firebase.sh"
. "$AXELRC/1-ALIAS/tec/alias-git.sh"
. "$AXELRC/1-ALIAS/tec/alias-node-npm.sh"
. "$AXELRC/1-ALIAS/tec/alias-scraper.sh"
. "$AXELRC/1-ALIAS/tec/alias-unix.sh"
. "$AXELRC/1-ALIAS/tec/alias-vscode.sh"

# by-CLI (projects)
. "$AXELRC/1-ALIAS/CLI/alias-CLI-tinax-scraper.sh"
. "$AXELRC/1-ALIAS/CLI/alias-CLI-genesis.sh"

# by-Boost
. "$AXELRC/1-ALIAS/devBoost/alias-devBoost.sh"

# path folders
alias PP='echo $PATH | tr ":" "\n" | sort -r --ignore-case  | fzf'
# echo $PATH | tr ':' '\n' Z
#  $$$ node -p "console.log(process.env.PATH.split(':').join('\n'))"
