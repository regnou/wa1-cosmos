#!/bin/sh
#@@@
#@@@ SCRAPPER
#@@@
# ###
# ### CHROME
# ###
# !!! chrome-yellow (tin non-payant)
alias chrome--green='/Applications/Google-Chrome--green.app/Contents/MacOS/Google\ Chrome \
              --user-data-dir=$HOME/0HOME/datadir/datadir--green'
# !!! payant
alias chrome--red='/Applications/Google-Chrome--red.app/Contents/MacOS/Google\ Chrome \
              --user-data-dir="/Users/yo/0HOME/datadir/datadir--red"'
# !!! z
# alias chrome--delete='/Applications/Google-Chrome--delete.app/Contents/MacOS/Google\ Chrome
#             --user-data-dir="~/0HOME/datadir/datadir--delete"'
# alias chrome--save='/Applications/Google-Chrome--save.app/Contents/MacOS/Google\ Chrome \
#             --user-data-dir="~/0HOME/datadir/datadir--save"'
# alias chrome--chatUntilGetPhone='/Applications/Google-Chrome--chatUntilGetPhone.app/Contents/MacOS/Google\ Chrome \
#             --user-data-dir="~/0HOME/datadir/datadir--chatUntilGetPhone"'
# alias chrome-firstChat='/Applications/Google-Chrome--firstChat.app/Contents/MacOS/Google\ Chrome \
#             --user-data-dir="~/0HOME/datadir/datadir--firstChat"'
# ###
# ### TINAX
# ###
PROJECT_TINAX="$HOME/0HOME/0GARAGE/6-APP_TINAX"
alias cdd='cd $PROJECT_TINAX'
# !!! CRON (mail ou mutt)
alias cronn='crontab $PROJECT_TINAX/scrap/cron/cronjobs.crontab'
alias cronl="crontab -l"
alias cronr="crontab -r"
# alias cron--tinax='crontab $PROJECT_TINAX/scrap/cron/cronjobs.txt && crontab -l'
# alias cron--remove='crontab -r'
# alias cron--list='crontab -l'
# !!! vscode
# alias tin=$(codi) '$HOME/0HOME/0GARAGE/6-APP_TINAX'
alias tin='codi $HOME/0HOME/0GARAGE/6-APP_TINAX'
alias vvv='cd $PROJECT_TINAX && npm run dev'
# !!! db
alias emu='cd $PROJECT_TINAX && npm run emu'
alias emu--kill='cd $PROJECT_TINAX && npm run emu--kill'
# !!! ts
alias ts='cd $PROJECT_TINAX && npm run ts | h -ni "0 errors" "watch mode" ": error " ".ts\(" ": cannot find module|has no exported member|: Module " "errors" "\[0\] " "TS2305"'
alias tin2-scrapper--ts='cd $PROJECT_TINAX && npm run scrapper--ts'
alias tin2-scrapper--ts-resolve='cd $PROJECT_TINAX && npm run scrapper--ts-resolve'
# !!!
# !!! tin payant
alias tin1='cd $PROJECT_TINAX && npm run tin-red--autolike'
alias tin2='cd $PROJECT_TINAX && npm run tin-red--firstChat'
alias tin3='cd $PROJECT_TINAX && npm run tin-red--chatUntilGetPhone-save'
alias tin4='cd $PROJECT_TINAX && npm run tin-red--delete'
alias tin-red3--chatUntilGetPhone-save--fast='cd $PROJECT_TINAX && npm run tin-red--chatUntilGetPhone-save--fast'
alias tin-red4--chatUntilGetPhone-load='cd $PROJECT_TINAX && npm run tin-red--chatUntilGetPhone-load'
# !!!
# !!! tin gratis
alias tin-green1--autolike='cd $PROJECT_TINAX && npm run tin-green--autolike'
alias tin-green2--firstChat='cd $PROJECT_TINAX && npm run tin-green--firstChat'
alias tin-green3--chatUntilGetPhone-save='cd $PROJECT_TINAX && npm run tin-green--chatUntilGetPhone-save'
alias tin-green4--delete='cd $PROJECT_TINAX && npm run tin-green--delete'
# ###
# ### MS
# ###
alias s1="node ~/0HOME/MS/1-SCRAPER/index.js --mode='cinecenter'"
alias s2="node ~/0HOME/MS/1-SCRAPER/index.js --mode='multicine'"
