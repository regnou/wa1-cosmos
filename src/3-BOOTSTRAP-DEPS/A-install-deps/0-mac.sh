#!/bin/sh
#@@@
#@@@ MAC  [dependencies]
#@@@

# -- DEV MAC OS
xcode-select --install

# -- INSTALL BREW (first time)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# compaudit | xargs chmod g-w

# Error: The following directories are not writable by your user:
# /usr/local/share/zsh
# /usr/local/share/zsh/site-functions

# You should change the ownership of these directories to your user.
#   sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions

# And make sure that your user has write permission.
#   chmod u+w /usr/local/share/zsh /usr/local/share/zsh/site-functions