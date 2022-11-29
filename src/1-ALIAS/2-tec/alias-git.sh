#!/bin/sh
#@@@
#@@@ GIT
#@@@

# -- delete branch locally
# git branch -d localBranchName

# -- delete branch remotely
# git push origin --delete remoteBranchName

# -- FIRST INSTALL PROCESS
# Create ssh key for git (press enter for default file location)
# ssh-keygen -t rsa -b 4096 -C "youremail@domain.com"
# Start ssh-agent in background
# eval "$(ssh-agent -s)"
# Add SSH key
# ssh-add ~/.ssh/id_rsa
# Set config file to automatically load key
# echo "Host *\n AddKeysToAgent yes\n UseKeychain yes\n IdentityFile ~/.ssh/id_rsa" >
# Add key to GH account at https://github.com/settings/keys, using this command to copy key to clipboard:
# pbcopy < ~/.ssh/id_rsa.pub
# Copy over or symlink .gitconfig. Example:
# ln -s ~/dev/dotfiles/.gitconfig ~/.gitconfig

. "$AXELRC/1-ALIAS/2-tec/alias-git--bouchon.sh"

# -e "added by us:"
# MERGE HELP
alias git-checkout--theirs="git checkout --theirs $(git status | grep -e 'both added' -e 'both modified' -e 'both deleted:' | awk '{print $NF}')"
alias git-commit--theirs='git commit `git status | grep "both added:" | awk "{print $NF}"`'
# Warning: If your .env is already part of your Git repository, adding it to .gitignore will not remove it. In this case, you’ll also need to tell Git to stop tracking .env, which you can do with
# This will delete .env from your repo, but leave it on your local machine (and now your .gitignore will cause it to be ignored).
# git rm --cached .env
# create an orphan virgin branch
# git switch --orphan <new branch>
# git config --global init.defaultBranch

alias g='git'
alias git-open='git-open'
alias git-clone='git clone'

alias NEW_LINE='echo -----' ##

# diff ce qui est commit (repo distant)
git__voir_fichiers() {
  gsf_ "$1"
  git show "$1" | $BOUCHON__GIT_DDD | h -i "popo" "lolo" "lili" "$1"
  gsf_ "$1"
}

# permet de lister JUSTE NOM + HASH -> et de grep sur un sha
git__voir_fichiers_simple() {
  # FAIRE JUSTE git l
  git show --oneline --decorate --stat "$1"
  git show --oneline --decorate --stat "$1" | h -ni "$1" \\.java \\.ui\\.xml '/services/|/dao/' /dto/ '/client/|/ui/|ui/|/views/|/pdd/|list/pddcreator/' /java/com/groupemre/atnv2 | h -i 'dao|service' presenter 'popup|editor' module 'validator|filter|Validation' bulksend create 'files changed' insertions deletions \\- \\+ '/combo.*'
  #git show  --oneline --decorate --stat --graph $1
  # git show  --oneline --decorate --stat --graph $1 | h -ni $1   \\.java \\.ui\\.xml '/services/|/dao/' /dto/ '/client/|/ui/|ui/|/views/|/pdd/|list/pddcreator/'  /java/com/groupemre/atnv2    | h -i 'dao|service' presenter 'popup|editor' module 'validator|filter|Validation' bulksend  create 'files changed' insertions deletions  \\- \\+ '/combo.*'
  #git show  --oneline --decorate --stat --graph $1 | h -i $1 'java\/com'  \\.java \\.ui\\.xml \\+ \\- 'files changed' insertions deletions
  #'\/java\/com\/groupemre\/atnv2\/'
}

# .
git__sshow() {
  ##git show  --oneline --decorate --stat --graph $1 | h -ni $1  '\/java\/com\/groupemre\/atnv2\/'  'files changed' insertions deletions  \\.java \\.ui\\.xml exception xml | h -i presenter popup module service dao validator filter bulksend editor create  \\+ \\-
  git show --oneline --decorate --stat "$1" | h -ni "$1" '\/java\/com\/groupemre\/atnv2\/' 'files changed' insertions deletions \\.java \\.ui\\.xml exception xml | h -i presenter popup module service dao validator filter bulksend editor create \\+ \\-
}

#@@@ GIT FUZZY (==> puissant mais CTRL+P ne marche pas)

# ADVANCED FZF // FZF guy
alias pwb='git rev-parse --abbrev-ref HEAD'

# BASIC FZF
alias gs='git fuzzy status' #---
alias gl='git fuzzy log'    #
alias cb='git fuzzy branch' #
alias gt='git fuzzy stash'
alias gr='git fuzzy reflog'
alias gpr='git fuzzy pr'
alias gd='git fuzzy diff'

# branch
alias mb='git branch | fzf --header Merge | xargs git merge'
alias gb='git branch | fzf --header Checkout | xargs git checkout'

#@@@ branch
# alias gb='git branch' # used by fuzzy
alias gc='git checkout'
alias gcb='git checkout -b'
alias git-checkout='git checkout'
alias git-checkout-and-createBranch='git checkout -b'

# branch details
alias git-branch-a='git branch -a'               # list all branch
alias git-branch-list-remote='git remote -v'     # list all remote URLs
alias git-branch-list-upstream='git branch -vv ' # verbose list set-upstrzeam
alias gbb='ECHO \
&& git-branch-a && NEW_LINE  \
&& git-branch-list-remote && NEW_LINE \
&& git-branch-list-upstream ; ECHO'

# branch deletions
# git delete branch
# git branch -d

# delete remote branch
# git push origin --delete feature/login  # delete remote
alias git-push-origin--delete='git push origin --delete'

# modify a branch name
# git branch -m wa-3
# git push origin -u <new_name>
# git push origin --delete <old_name>

# remote
alias git-remote-v='git remote -v'
alias git-remote-add-origin='git remote add origin'

# create remote branch
alias git-push--set-upstream='git push --set-upstream origin master'

# .
# https://salferrarello.com/view-current-commit-message-during-git-rebase-conflict/
# Update If you are running Git 2.17 or newer, it turns out you can view the current commit in the ongoing rebase with
# git rebase --show-current-patch
#
# https://salferrarello.com/resolve-git-rebase-merge-conflicts/
# allows us to verify there are no unresolved merge conflicts. - We can review our changes with
# git diff --staged
# Because we have rewritten history, we need to overwrite the remote branch (rather than just add commits). To do this we add --force-with-lease to our git push.
# git push --force-with-lease
# .

# RESET vs REVERT
# git revert = Public branch (cree un commit qui efface l autre)
# git reset = private branch (supprime vraiment de l historique)

# revert (cree un commit qui efface l autre)
alias grv='git revert '

# reset (supprime vraiment de l historique)
# HARD: delete le commit de l arbre (et aussi du working tree)
# git reset --hard  b04a07f

# SOFT: tu reccuperes le dernier commit et le place ou il le faut
# git reset --soft HEAD^

# MIXED: c'est utile pour UNSTAGE (remet en normal ET NON PAS en pret a commiter)
alias grH='git reset HEAD | h -n "M	    "'

# git reset –hard vs git checkout -f
# Last updated on February 8, 2022 by Sal Ferrarello
# I recently had a conversation about git reset --hard vs git checkout -f, and it turns out they do the same thing. This is one of the tricky things about Git, there are often multiple ways to do the same thing.
# Note: git checkout -f is the same as git checkout . except -f works even when there is a currently a merge conflict (git checkout . throws an error in this situation)

# REBASE vs MERGE
# rebase
alias grc='git rebase --continue'

# pull rebase (use this, when you want to update your branch)
alias gitp='git pull --rebase '

# merge
# git merge --abort # when merging, you can abort
# OTHER REPAIR CMD

# cherry pick
alias gcp='git cherry-pick' #git cherry -v master
# REGLE: LORSQUE TU CHERRY PICK: IL FAUT ABSOLUEMENT QUE TU METTES:
# PICK (avec la coloration syntaxique : sinon tu ne comprend plus rien)
# git log --graph --left-right --cherry-pick --oneline wa-4...wa-4-bis
# BASICS

# status
alias a="ECHO && git status \
| h $BOUCHON__GIT_FILES \
| h $BOUCHON__GIT_STATUS ; \
ECHO"

# fast auto commit + push
alias ga='git add '
alias gaa='git add --all .'
alias ggm='gaa && git commit -m '
alias gm='git commit -m '
alias gmm='git commit -m "⬛ --"'
alias gp='git push'
alias gpp='gaa && gmm && gp '
# | h -ni "Enumerating objects:" "Writing objects:" "remote: Resolving deltas:"
# stash
# alias gtt='git stash'
# alias gtp='git stash pop'
# alias gtl='git stash list '
alias git-stash='git stash'
alias git-stash-pop='git stash pop'
alias git-stash-list='git stash list '
alias git-stash-list--date='git stash list --date=local'

# show
alias git-show-axel='git show $(git stash list | cut -d":" -f 1)'

# tag
alias gtag='git tag | h -ni 2.2.3 2.2.4 2.2.5'

#@@@
#@@@ GIT LOG - git log --oneline (stack view) - https://git-scm.com/docs/pretty-formats#Documentation/pretty-formats.txt-Cred
#@@@

# UNE SEULE BRANCHE
alias gl='git log --graph --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
alias gll='git lg'

# TOUTES LES BRANCHES
alias lg="ECHO && git log -25 --graph --abbrev-commit --decorate --format=format:'%C(yellow)%h%C(reset)%C(auto)%d%C(reset) %C(normal)%s%C(reset) %C(dim white)%an%C(reset) %C(dim blue)(%ar)%C (reset)' --all; ECHOO"

# UI: GRAPH
alias lgg="git log -13 --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias lggg="git log -13 --graph --pretty=format:'  %C(yellow)%<(30)%d   %C(white)%<(50)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all  \
| h -i  $BOUCHON__GIT_LOG \
| h -ni popo pipi pupu koko kiki kuku  '\[maven-release-plugin\] prepare for next development iteration|\[maven-release-plugin\] prepare release'  \
| h -ni $BOUCHON__GIT_HASH "
alias lgggg="git log -30 --graph --pretty=format:'  %C(yellow)%<(25)%d   %C(white)%<(100)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all  "

# UI: hash-list
alias ggl="git log -30 \
| h -i  $BOUCHON__GIT_LOG \
| h -ni popo pipi pupu koko kiki kuku  '\[maven-release-plugin\] prepare for next development iterationgi|\[maven-release-plugin\] prepare release'  \
| h -ni $BOUCHON__GIT_HASH "
alias gggl="git log --graph --abbrev-commit --date=relative"

# DIFF + / -
alias gl-1='git log -50 --stat'
alias gl-2='git log -10 --graph --oneline --decorate --all --name-status --stat' # WARN: je n ai pas le nom des personnes

# Z
alias gl-3='git log -20 --stat  --oneline --pretty=format:"%Cred%h%Creset %C(yellow)%d%Creset %C(yellow)%s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit | grep -E "/|$"'
alias gl-4='git log -20 --author="axel" --stat  --oneline --pretty=format:"%Cred%h%Creset %C(yellow)%d%Creset %C(yellow)%s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit | grep -E "/|$"'
alias gl-5='git log --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s <%ad>" --abbrev-commit --date=relative --name-status their = log --all --graph --decorate --oneline --simplify-by-decoration'
alias gl-6='git log -50 --author="axel" --stat'
alias gl-7='git log --author="axel" --stat'

# alias gl12='git l -50'
# alias gl13='git gl -5'
# alias gl14='git lg -50'
# alias gl4='git glaaa -50'

# Graph log with full commit message
# git log --graph --abbrev-commit --decorate --date=relative --all
# git log --graph --oneline --decorate --all
# git log --graph --date-order -C -M --pretty=format:"<%h> %ad [%an] %Cgreen%d%Creset %s" --all --date=short
# lg1=log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
# lg2=log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all

# useful for daily stand-up
# git-standup() {
#   AUTHOR=${AUTHOR:="`git config user.name`"}
#   since=yesterday
#   if [[ $(date +%u) == 1 ]] ; then
#       since="2 days ago"
#   fi
#  git log --all --since "$since" --oneline --author="$AUTHOR"
# }

#@@@
#@@@ GIT [END]
#@@@
