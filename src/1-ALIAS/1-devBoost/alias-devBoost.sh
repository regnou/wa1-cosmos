#!/bin/sh
#@@@
#@@@ THIS BOOST YOUR DEVELOPER SUPERPOWERS
#@@@
# %%%
# %%% COMMON DEV GLOBAL
# %%%
alias codi="code"
alias rc='codi $AXELRC'

# %%%
# %%% COMMON CLI HELPER
# %%%
# publish package
alias spack='npm run package && cd package && npm publish --access public'

# view generated app
alias nrs="pnpm run dev -- --open"

# %%%
# %%% DB
# %%%
alias emu=' npm run emu'
alias emu--kill=' npm run emu--kill'

# %%%
# %%% DIVERS
# %%%
# secure zip
# zip -er FILENAME.zip
