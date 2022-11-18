#!/bin/sh
export BOUCHON__GIT_DDD=' h -ni  \
"^diff --git.*" \
"^\+ .*" \
"^@@.*" \
"toto" \
"\+\=\=\=\=\=\=\=|\+\|\|\|\|\|\|\| merged common ancestors|\+\>\>\>\>\>\>\> Stashed changes" \
"\+\<\<\<\<\<\<\<\ Updated upstream" \
| h -i  \
"^\- .*" \
".*\.java$" \
"deleted file mode" \
"new file mode" \
"index" '

# hash
export BOUCHON__GIT_HASH="'5f4e63e|5162b42|d9af13b|4b657e6|acfa51a|ad2e172|e869510' 20715 19020 19054 21068 22606 '615d7ff|ec4667e|ad2e172'"

# files
export BOUCHON__GIT_FILES="'LoginPresenter.java|Atnv2Dev.gwt.xml' "

# status
export BOUCHON__GIT_STATUS=" 'Current branch development is up to date.' \
'nothing to commit, working tree clean| untracked files:|Your branch is ahead of |\(use \"git push\" to publish your local commits\)|\(use \"git add <file>...\" to include in what will be committed\)|nothing added to commit but untracked files present (use \"git add\" to track)' \
'redcolor' \
'Your branch is up to date with|\(use \"git reset HEAD <file>...\" to unstage\)' \
'orangecolor' \
'purplecolor' \
'redcolorBG' \
'modified:|Your branch is up-to-date with|Changes not staged for commit:|\(use \"git add/rm <file>...\" to update what will be committed\)|\(use \"git restore <file>...\" to discard changes in working directory\)|\(use \"git checkout -- <file>...\" to discard changes in working directory\)|\(use \"git add <file>...\" to update what will be committed\)' \
'Unmerged paths|\(use \"git add <file>...\" to mark resolution\)' \
'deleted:' \
'added:|main|origin/main' \
'Changes to be committed:|new file:|\(use \"git restore --staged <file>...\" to unstage\)|nothing to commit, working directory clean' \
'On branch|no changes added to commit|\(use \"git add\" and/or \"git commit -a\"\)' \
"

# AXL_GIT_STATUS_detail=" 'origin/' \
# 'development|hotfixes|master' \
# 'YY' \
# 'new file' \
# 'YY' \
# 'YY' \
# 'deleted' \
# 'renamed' \
# "

# log
export BOUCHON__GIT_LOG="'fixes #' \
'refs #' \
'Revert \"Revert' \
'origin/tmp|tmp'  \
'origin/dev|dev'  \
'origin/development|development'  \
'origin/master|master'  \
'HEAD|origin/HEAD' \
'Merge|Revert' \
'origin/hotfixes|hotfixes' \
'tag: |tag: 2\.2\.' \
'refs/stash' \
'test' "
