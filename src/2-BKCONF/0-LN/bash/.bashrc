#!/bin/bash
# €€€ 22 nov
# €€€ BASH RC -- 11 nov
# €€€
# echo "🌳 > bashrc [start]"
echo "🌳 > [start] $SHELL >> [node $(node -v)] 🌳"

# %%%
# %%% EXPORTs
# %%%
. ~/"AXELRC/shellBoost/alias-exports.sh"

# %%% TERM BOOST
# shellcheck source=/Users/yo/AXELRC/1-ALIAS/0-shellBoost/alias-layout1--header.sh
. "$AXELRC/shellBoost/alias-layout1--header.sh"
. "$AXELRC/shellBoost/alias-layout2--body.sh"

# %%% BASH FEATURES
# FZF -- (it s a brew deps)
[ -f ~/.fzf.bash ] && . ~/.fzf.bash
# load: https://github.com/junegunn/dotfiles

# %%% TERM BOOST
. "$AXELRC/shellBoost/alias-layout3--footer.sh"

# @the end of .rc
# %%%
# %%% BASH EVAL
# %%%
# --- fast move
eval "$(zoxide init bash)"
# --- pimp my prompt
eval "$(starship init bash)"
# --- clear
echo "🌳🌳🌳 [end] $SHELL >> [node $(node -v)] 🌳🌳🌳"
