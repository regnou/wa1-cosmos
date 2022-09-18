#!/bin/sh
#@@@
#@@@ BREW  [dependencies]
#@@@
# NOTE
# note: HOMEBREW uses /usr/local
# DEBUG
# brew doctor
# brew info nvm    # avoir info install config PATH
# Updating Your System
# init brew
brew update
brew upgrade
brew cleanup # Remove outdated versions from the cellar.
# INSTALLS
# The best ones are re-written in rust, see:
# https://github.com/sharkdp/hyperfine
# bin - MAC
brew install --cask iterm2
brew install --cask google-chrome
# spectacle
# bin - FONT
# I DONT USE IT
# brew tap homebrew/cask-fonts
# bin ZSH
# brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
# LS / CD
brew install exa       # RUST
brew install zoxide    # RUST
brew install git-fuzzy # RUST
brew install fzf       #
# GIT
brew install git-open
brew install delta # RUST
# MODIFY IN FILE
brew install sd # RUST > sed like
# FIND FILE
brew install fd # RUST
# SYS-ADMIN
brew install procs    # RUST
brew tap cjbassi/ytop # RUST
brew install ytop     # RUST
# Z
brew install dust
# DEV
brew install jq # json processor
# NETWORK
brew install tokei # RUST
brew install wifi-password
brew install bandwhich
brew install ripgrep # A super-fast search tool that recursively searches directories for a regex pattern. EX: rg node
brew install grex
# brew install tree
# RUNTIMES
brew install go
# cmd benchmarker
brew install hyperfine
brew install shellcheck
