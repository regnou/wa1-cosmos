#!/bin/sh
# %%%
# %%% 29 juin 2022 jojo 4
# %%%
# echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳"
# echo "🌳 > [start] $SHELL >> [node $(node -v)] 🌳"
# echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳"

# %%%
# %%%  COMMON-IMPORTS ~
# %%%
# shellcheck source=/Users/yo/0HOME/0WEBAGENCY/0GH/AXELRC/src/1-ALIAS/common/alias-imports.sh
. ~/"0HOME/0WEBAGENCY/0GH/AXELRC/src/1-ALIAS/common/alias-imports.sh"
# shellcheck source=/Users/yo/0HOME/0WEBAGENCY/0GH/AXELRC/src/1-ALIAS/common/alias-layout1--header.sh
. "$AXELRC/1-ALIAS/common/alias-layout1--header.sh"

# %%%
# %%% SETUP ZSH
# %%%
# --- ZSH-COMPLETTION => To activate these completions, add the following to your .zshrc:
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit # todo this takes time when reloading VS CODE
fi

# --- ZSH-CORRECT-SPELL
# zstyle ':completion:*:git-checkout:*' sort false
# zstyle ':completion:*:descriptions' format '[%d]'
# zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# https://superuser.com/questions/1092033/how-can-i-make-zsh-tab-completion-fix-capitalization-errors-for-directories-and
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
fpath=(/usr/local/share/zsh-completions $fpath)

# --- ZSH-HISTORY
# https://www.soberkoder.com/better-zsh-history/
# https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/history.zsh
export HISTFILE=~/.zsh_history # HISTSIZE - Refers to the number of commands that are loaded into memory from the history file
export HISTSIZE=100000000      # HISTFILE - Refers to the path/location of the history file
export SAVEHIST=100000000      # SAVEHIST - Refers to the number of commands that are stored in the zsh history file
export HISTTIMEFORMAT="[%F %T] "

# --- ZSH-MAN zshoptions
setopt autocd # don't not type CD to go inside
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS

# €€€
# €€€ INIT ZSH LIBs ( + PATH)
# €€€
pathadd() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="${PATH:+"$PATH:"}$1"
  fi
}
#  €€€ TERM-LIB -- PLUGINS
# --- git-fuzzy (fzf+git)
pathadd "$AXELRCLIB/git-fuzzy/bin"
# --- higlighter -- echo "rvjbovRGYBOV" | h   r v j b o v R G Y B O V
. "$AXELRCLIB/h/h.sh"
# --- man
. "$AXELRCLIB/zsh-very-colorful-manuals/zsh-very-colorful-manuals.plugin.zsh"
# --- Syntax higlight
. "$AXELRCLIB/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
# --- Auto suggests
. "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
# --- FZF -- (it s a brew deps)
# load: https://github.com/junegunn/dotfiles
[ -f ~/.fzf.zsh ] && . ~/.fzf.zsh
#  €€€ DEV-LIB
# --- GO
# pathadd $HOME/go/bin

# --- C++ GNU M4 (deps pour autotool) => c est une MCRO PROCESSOR
# pathadd /usr/local/opt/m4/bin
# pathadd /usr/bin/m4

# --- NODE
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

# --- G-cloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/0HOME/1DL/zINSTALL/google-cloud-sdk/path.zsh.inc' ]; then . '~/0HOME/1DL/zINSTALL/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '~/0HOME/1DL/zINSTALL/google-cloud-sdk/completion.zsh.inc' ]; then . '~/0HOME/1DL/zINSTALL/google-cloud-sdk/completion.zsh.inc'; fi

# --- rust-deps
# source "$HOME/.cargo/env"

# --- PNPM
export PNPM_HOME="/Users/yo/Library/pnpm"
pathadd $PNPM_HOME

# %%%
# %%% COMMON IMPORTS ~
# %%%
. "$AXELRC/1-ALIAS/common/alias-layout2--body.sh"

# %%%
# %%%
# %%%
# %%%
# %%%
# %%%
# %%% CONFIG ZSH LIBs
# %%%
# --- GIT FUZZY (see pathadd below)
# status
export GIT_FUZZY_STATUS_ADD_KEY='Ctrl-S'
export GIT_FUZZY_STATUS_EDIT_KEY='Ctrl-E'
export GIT_FUZZY_STATUS_COMMIT_KEY='Ctrl-L'
export GIT_FUZZY_STATUS_RESET_KEY='Ctrl-R'
export GIT_FUZZY_STATUS_DISCARD_KEY='Ctrl-U'
# GIT_FUZZY_STATUS_ADD_KEY="${GIT_FUZZY_STATUS_ADD_KEY:-Alt-S}"
# GIT_FUZZY_STATUS_EDIT_KEY="${GIT_FUZZY_STATUS_EDIT_KEY:-Alt-E}"
# GIT_FUZZY_STATUS_COMMIT_KEY="${GIT_FUZZY_STATUS_COMMIT_KEY:-Alt-C}"
# GIT_FUZZY_STATUS_RESET_KEY="${GIT_FUZZY_STATUS_RESET_KEY:-Alt-R}"
# GIT_FUZZY_STATUS_DISCARD_KEY="${GIT_FUZZY_STATUS_DISCARD_KEY:-Alt-U}"
# log
export GIT_FUZZY_LOG_WORKING_COPY_KEY='Ctrl-M'
export GIT_FUZZY_MERGE_BASE_KEY='Ctrl-P'
export GIT_FUZZY_LOG_COMMIT_KEY='Ctrl-D'
# GIT_FUZZY_LOG_WORKING_COPY_KEY="${GIT_FUZZY_LOG_WORKING_COPY_KEY:-Ctrl-P}"
# GIT_FUZZY_MERGE_BASE_KEY="${GIT_FUZZY_MERGE_BASE_KEY:-Alt-P}"
# GIT_FUZZY_LOG_COMMIT_KEY="${GIT_FUZZY_LOG_COMMIT_KEY:-Alt-D}"
# branch
export GIT_FUZZY_BRANCH_WORKING_COPY_KEY='Ctrl-M'
export GIT_FUZZY_BRANCH_MERGE_BASE_KEY='Ctrl-P'
export GIT_FUZZY_BRANCH_COMMIT_LOG_KEY='Ctrl-L'
export GIT_FUZZY_BRANCH_CHECKOUT_FILE_KEY='Ctrl-F'
export GIT_FUZZY_BRANCH_CHECKOUT_KEY='Ctrl-B'
export GIT_FUZZY_BRANCH_DELETE_BRANCH_KEY='Ctrl-D'
# GIT_FUZZY_BRANCH_WORKING_COPY_KEY="${GIT_FUZZY_BRANCH_WORKING_COPY_KEY:-Ctrl-P}"
# GIT_FUZZY_BRANCH_MERGE_BASE_KEY="${GIT_FUZZY_BRANCH_MERGE_BASE_KEY:-Alt-P}"
# GIT_FUZZY_BRANCH_COMMIT_LOG_KEY="${GIT_FUZZY_BRANCH_COMMIT_LOG_KEY:-Alt-L}"
# GIT_FUZZY_BRANCH_CHECKOUT_FILE_KEY="${GIT_FUZZY_BRANCH_CHECKOUT_FILE_KEY:-Alt-F}"
# GIT_FUZZY_BRANCH_CHECKOUT_KEY="${GIT_FUZZY_BRANCH_CHECKOUT_KEY:-Alt-B}"
# GIT_FUZZY_BRANCH_DELETE_BRANCH_KEY="${GIT_FUZZY_BRANCH_DELETE_BRANCH_KEY:-Alt-D}"
# reflog
export GIT_FUZZY_REFLOG_WORKING_COPY_KEY='Ctrl-M'
export GIT_FUZZY_REFLOG_MERGE_BASE_KEY='Ctrl-P'
export GIT_FUZZY_REFLOG_COMMIT_KEY='Ctrl-D'
# GIT_FUZZY_REFLOG_WORKING_COPY_KEY="${GIT_FUZZY_REFLOG_WORKING_COPY_KEY:-Ctrl-P}"
# GIT_FUZZY_REFLOG_MERGE_BASE_KEY="${GIT_FUZZY_REFLOG_MERGE_BASE_KEY:-Alt-P}"
# GIT_FUZZY_REFLOG_COMMIT_KEY="${GIT_FUZZY_REFLOG_COMMIT_KEY:-Alt-D}"
# stash
export GIT_FUZZY_DROP_KEY='Ctrl-D'
GIT_FUZZY_DROP_KEY="${GIT_FUZZY_DROP_KEY:-Alt-D}"

# --- GF (suite ?)
# config - https://medium.com/better-programming/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d
export GF_PREFERRED_PAGER="delta --theme=gruvbox --highlight-removed -w __WIDTH__"
export GF_BAT_STYLE=changes
export GF_BAT_THEME=zenburn
export GF_LOG_MENU_PARAMS='--pretty="%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --topo-order'
export GF_REFLOG_MENU_PARAMS='--pretty=fuzzyformat'
# when diffing with branches or commits for preview
export GF_DIFF_COMMIT_PREVIEW_DEFAULTS="--patch-with-stat"
# when diffing with branches or commits for preview
export GF_DIFF_COMMIT_RANGE_PREVIEW_DEFAULTS="--summary"
# when diffing individual files
export GF_DIFF_FILE_PREVIEW_DEFAULTS="--indent-heuristic"

# --- FZF
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
# export FZF_CTRL_T_COMMAND='fd --type f --type d --hidden --follow --exclude .git'
# command -v bat  > /dev/null && export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always {}'"
# command -v blsd > /dev/null && export FZF_ALT_C_COMMAND='blsd'
# command -v tree > /dev/null && export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# --- fzf-tab - 加载并配置 ALOXAF - https://github.com/Aloxaf/fzf-tab
# load -> TODO it does not work + I neeed TAB to auto FZF
# fzf-tab needs to be loaded after compinit, but before plugins which will wrap widgets,
# such as zsh-autosuggestions or fast-syntax-highlighting !
# . $AXELRCLIB/fzf-tab-completion/bash/fzf-bash-completion.sh
. "$AXELRCLIB/fzf-tab/fzf-tab.zsh"

# config here = https://github.com/Aloxaf/fzf-tab/wiki/Configuration
zstyle ':fzf-tab:complete:_zlua:*' query-string input
zstyle ':fzf-tab:complete:kill:argument-rest' fzf-preview 'ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:complete:kill:argument-rest' fzf-flags '--preview-window=down:3:wrap'
zstyle ':fzf-tab:complete:kill:*' popup-pad 0 3
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
zstyle ':fzf-tab:complete:cd:*' popup-pad 30 0
zstyle ':fzf-tab:complete:cd:*' sort true
zstyle ":fzf-tab:*" fzf-flags --color=bg+:23
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
zstyle ":completion:*:git-checkout:*" sort false
zstyle ':completion:*:exa' file-sort modification
zstyle ':completion:*:exa' sort false

# %%%
# %%% IMPORTS
# %%%
. "$AXELRC/1-ALIAS/common/alias-layout3--footer.sh"

# ### @the end of .rc
# --- fast-move
eval "$(zoxide init zsh)"
# --- pimp-my-prompt
eval "$(starship init zsh)"

# %%%
# %%% axel (useless-end)
# %%%
# default node
# nvm use 18.4.0
# default dir when open console
# cd ~/0HOME/0GARAGE/

echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳"
echo "🌳 [end] $SHELL >> [node $(node -v)] 🌳"
echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳"
