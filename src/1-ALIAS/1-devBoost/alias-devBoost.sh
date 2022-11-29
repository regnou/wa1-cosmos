#!/bin/sh

# @@@
# @@@ THIS BOOST YOUR DEVELOPER SUPERPOWERS
# @@@

# %%%
# %%% COMMON UNIX GLOBAL
# %%%

# basics
alias codi="code"
alias rc='codi $AXELRC'

# path folders
alias PP='echo $PATH | tr ":" "\n" | sort -r --ignore-case  | fzf'
# echo $PATH | tr ':' '\n' Z

# %%%
# %%% COMMON DEV GLOBAL
# %%%

# git remote set-url origin https://github.com/regnou/wa1-cosmos.git

# $$$ node -p "console.log(process.env.PATH.split(':').join('\n'))"

# publish package
alias spack='npm run package && cd package && npm publish --access public'

# view generated app
alias nrs="pnpm run dev -- --open"
alias nrss='nrs | h   "\.svelte" "~/0HOME/GARAGE/INTRALINK/src/|/src/routes/|/src/lib/|/src/stores/" "\[0\]" "\[1\]" ".*:.*:.*" "A11y"'

# DB
alias emu='npm run emu'
alias emu--kill='npm run emu--kill'

# %%%
# %%% DIVERS
# %%%

# secure zip
# zip -er FILENAME.zip
