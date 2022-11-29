#!/bin/sh
#@@@
#@@@ FIREBASE
#@@@

# CURRENT
alias y-sync='. ~/0HOME/0GEN/0-current/src/db/firebase/back/script/sync-prod-emu/start-up.sh'

# Pushing rules
# firebase login
# firebase use demofirebasesvelte

# Create starter
# firebase apps:create
alias f='firebase'

# Alias firebase
alias f-use='f use'
alias f-use--add='f use --add'
#
alias f-projects--list='f projects:list'
alias f-projects--create='projects:create'
alias f-projects--addfirebase='f projects:addfirebase'
#
alias f-apps--list='firebase apps:list'
alias f-apps--create='f apps:create'
alias f-apps--list='f apps:list'
alias f-apps--sdkconfig='f apps:sdkconfig'
#
alias f-help='firebase -h | h : apps database functions settup projects login hosting  auth emulators'

# Deploy
alias f-deploy='f deploy'
alias f-deploy--only-hosting='f deploy --only hosting'
alias f-deploy--only-firestore-rules='f deploy --only firestore:rules'
alias f-hosting-channel--deploy='firebase deploy hosting:crm-dmc-2021'
# alias f-hosting-channel--deploy='firebase hosting:channel:deploy crm-dmc-2021'
# firebase deploy --only hosting:crm-dmc-2021

# TODO : PROD DELETE :
# POUR TT DB : firebase firestore:delete path-to-delete
# POUR 1 collection : firebase firestore:delete -r /csv

# EMU
# alias f-emu-exec--only-firestore="f emulators:exec --only firestore 'yarn test-firestore'"
# firebase emulators:exec --only database "npm run test-database"
alias f-emu-start--only-function-firestore='f emulators:start --only functions,firestore | h -ni $PORT'
alias f-emu-start--only-firestore='f emulators:start --only firestore'
alias f-emu-start--only-function='f emulators:start --only functions'
alias f-emu-start--only-hosting='f emulators:start --only hosting'
alias f-emu-start--only='f emulators:start --only'
alias f-emu-start--inspect-function='f emulators:start --inspect-functions'
alias f-serve='f serve'
alias f-serve--only-hosting='f serve --only hosting'
