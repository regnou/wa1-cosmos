#!/bin/bash
# €€€
# €€€ BASH RC -- 11 nov
# €€€
# echo "🌳 > bashrc [start]"
echo "🌳 > [start] $SHELL >> [node $(node -v)] 🌳"

# %%%
# %%% EXPORTs
# %%%
. ~/"AXELRC/commonTermBoost/alias-exports.sh"

# %%% TERM BOOST
# shellcheck source=/Users/yo/AXELRC/1-ALIAS/commonTermBoost/alias-layout1--header.sh
. "$AXELRC/commonTermBoost/alias-layout1--header.sh"
. "$AXELRC/commonTermBoost/alias-layout2--body.sh"

# %%% BASH FEATURES
# FZF -- (it s a brew deps)
[ -f ~/.fzf.bash ] && . ~/.fzf.bash
# load: https://github.com/junegunn/dotfiles

# %%% TERM BOOST
. "$AXELRC/commonTermBoost/alias-layout3--footer.sh"

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
