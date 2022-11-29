#!/bin/sh

###
### BREW  [dependencies]
###

# note: HOMEBREW uses /usr/local

# -- DEBUG
# brew doctor
# brew info nvm    # avoir info install config PATH

# -- INIT brew -- Updating Your System
brew update
brew upgrade
brew cleanup # Remove outdated versions from the cellar.

# ---------------------------------
# -- INSTALLS
# ---------------------------------
# + bin - MAC
brew install --cask iterm2
brew install --cask google-chrome
# spectacle

# + bin - FONT
# I DONT USE IT
# brew tap homebrew/cask-fonts

# + bin NVM
brew install nvm
mkdir ~/.nvm
nvm install --lts

# + bin GCLOUD
brew install --cask google-cloud-sdk

# + bin ZSH
# brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# PROMPT ++
brew install starship

# LS / CD
brew install exa       # RUST
brew install fzf       #
brew install zoxide    # RUST -- https://github.com/ajeetdsouza/zoxide

# GIT
brew install gh 
# gh auth login 
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#about-ssh-key-passphrases
pbcopy < ~/.ssh/id_ed25519.pub
ssh -T git@github.com


# ----------- # ----------- # -----------
# TO CONTINUE
# ----------- # ----------- # -----------

# GIT
brew install git-fuzzy # RUST
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
