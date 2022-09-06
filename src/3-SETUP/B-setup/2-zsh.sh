#!/bin/sh
#@@@
#@@@ ZSH  [bootstrap-script]
#@@@

# BASE
# set default SHELL
chsh -s "$(which zsh)"

# XTRA
# To install useful key bindings and fuzzy completion:
"$(brew --prefix)"/opt/fzf/install
