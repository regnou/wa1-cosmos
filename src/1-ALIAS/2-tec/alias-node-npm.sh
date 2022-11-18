#!/bin/sh
#@@@
#@@@ NODE NPM
#@@@

# €€€
# €€€ Node
# €€€
alias nv='node -v'
alias nv-16='nvm use 16.10.0'
alias nv-18='nvm use 18.4.0'
alias ppp='cat package.json | h scripts dependencies devDependencies name start build deploy init test'

# €€€
# €€€ NPM
# €€€
alias formatt='clear && npm run format | h -ni ".test" "\.cjs" "\.json" "\.svelte"  "\.html" "\.css" "\.js" "\.ts" "\.scss"  '
export BOUCHON__LINT='\
"unexpected any warning" \
"\.ts|/Users/yo/0HOME/0GARAGE/6-APP_TINAX" \
"Unexpected any|error" \
"warning|singleton" \
"====================================" \
"0 errors|0 warnings|0 hints" \
'
alias lintt='clear && npm run lint | h -ni ' "$BOUCHON__LINT"
export BOUCHON__CHECK='\
"/tests-unit/scrapper/|has no effect on the type of this expression" \
"\.ts|/Users/yo/0HOME/0GARAGE/6-APP_TINAX" \
"/scrapper/src/" \
"any|error|Cannot find module" \
"====================================" \
"0 errors|0 warnings|0 hints" \
"svelte-check --tsconfig" \
'
alias checkk='clear \
&& echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳" \
&& echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳" \
&& echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳" \
&& echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳" \
&& npm run check | h -ni  '"$BOUCHON__CHECK"

alias testt='npm run test | h -ni "test.ts:" "\-\-" ">>>" "tests/scrapper/" "apiChat" "apiMine" "apiShared" " # "'
alias megaa='npm run megacheck'

alias upAll='ncu -u'
alias nr='npm run'
alias nrp="npm run play"
alias nrpd="npm run play-debug"
alias nrt="npm run test"
alias nre="npm run emu"

alias nrstart="npm run start"
alias nrss='nrs | h   "\.svelte" "~/0HOME/GARAGE/INTRALINK/src/|/src/routes/|/src/lib/|/src/stores/" "\[0\]" "\[1\]" ".*:.*:.*" "A11y"'
alias nrdeb="npm run debug"
alias nrdep='npm run deploy'
alias nrdev='npm run dev'
alias nrb='npm run build'
alias ni='npm install'
alias n="npm run"

# yarn
# alias y='yarn'
# alias yb='y build'
# alias y-build='y build'
# alias yd='ECHOO && y dev; ECHO'
# alias y-dev='y dev'
# alias y-emu='y emu'
# alias y-emu--import-prod='y emu--import-prod'
# alias ys='y start'
# alias y-start='y start'
# alias y-deploy='y deploy'
# alias ya='y add'
# alias y-add='y add'
# alias y-global-add='y global add'
# alias y-add-dependency='y add -D'
# alias y-install='yarn install'
# alias y-upgrade-interactive--latest='yarn upgrade-interactive --latest'
# alias y-global-list='yarn global list'
