#!/bin/bash
# %%%
# %%% 29 juin 2022 kiki jojo
# %%%
# echo "🌳 > bashrc [start]"

# %%%
# %%%IMPORT
# %%%
. ~/"AXELRC/common/alias-imports.sh"
# shellcheck source=/Users/yo/AXELRC/1-ALIAS/common/alias-layout1--header.sh
. "$AXELRC/common/alias-layout1--header.sh"
. "$AXELRC/common/alias-layout2--body.sh"

# FZF -- (it s a brew deps)
[ -f ~/.fzf.bash ] && . ~/.fzf.bash
# load: https://github.com/junegunn/dotfiles

# %%%
# %%% IMPORT
# %%%
. "$AXELRC/common/alias-layout3--footer.sh"

### @the end of .rc
# %%%
# %%%EVAL
# %%%
# --- fast move
eval "$(zoxide init bash)"
# --- pimp my prompt
eval "$(starship init bash)"
# --- clear
echo "🌳🌳🌳 [end] $SHELL >> [node $(node -v)] 🌳🌳🌳"
