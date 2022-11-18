#!/bin/sh
#@@@
#@@@ SCRAPPER
#@@@

PROJECT_TINAX="$HOME/0HOME/0GARAGE/6-APP_TINAX"

# $$$ CRON (mail ou mutt)
alias cronn='crontab $PROJECT_TINAX/scrap/cron/cronjobs.crontab'
alias cronl="crontab -l"
alias cronr="crontab -r"

# $$$ ts
alias ts='npm run ts | h -ni "0 errors" "watch mode" ": error " ".ts\(" ": cannot find module|has no exported member|: Module " "errors" "\[0\] " "TS2305"'
alias scrapper='npm run scrapper'
# alias tin-scrapper--ts-resolve='npm run scrapper--ts-resolve'

# $$$ tin payant
# alias tin1='npm run tin-red--autolike'
# alias tin2='npm run tin-red--firstChat'
# alias tin3='npm run tin-red--chatUntilGetPhone-save'
# alias tin3--chatUntilGetPhone-load='npm run tin-red--chatUntilGetPhone-load'
# alias tin3--chatUntilGetPhone-save--fast='npm run tin-red--chatUntilGetPhone-save--fast'
# alias tin4='npm run tin-red--delete'

# $$$ tin gratis
# alias tin-green1--autolike='npm run tin-green--autolike'
# alias tin-green2--firstChat='npm run tin-green--firstChat'
# alias tin-green3--chatUntilGetPhone-save='npm run tin-green--chatUntilGetPhone-save'
# alias tin-green4--delete='npm run tin-green--delete'

# %%%
# %%% MS
# %%%
alias s1="node ~/0HOME/MS/1-SCRAPER/index.js --mode='cinecenter'"
alias s2="node ~/0HOME/MS/1-SCRAPER/index.js --mode='multicine'"
