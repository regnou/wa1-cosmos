#!/bin/sh
#@@@
#@@@ LN  [bootstrap-script]
#@@@

# bash
ln -sf ~/.bash_profile ~/AXELRC/src/2-BKCONF/0-LN/bash/.bash_profile
ln -sf ~/.bashrc ~/AXELRC/src/2-BKCONF/0-LN/bash/.bashrc

# git
ln -sf ~/.gitignore_global ~/AXELRC/src/2-BKCONF/0-LN/git/.gitignore_global
ln -sf ~/.gitconfig ~/AXELRC/src/2-BKCONF/0-LN/git/.gitconfig
ln -sf ~/.gitconfig ~/AXELRC/src/2-BKCONF/0-LN/git/.gitmessage

# vs-code
# ln -sf ~/Library/Application\ Support/Code\ -\ Insiders/User/settings.json ~/AXELRC/src/2-BKCONF/0-LN/vs/settings.json
# ln -sf ~/Library/Application\ Support/Code\ -\ Insiders/User/keybindings.json ~/AXELRC/src/2-BKCONF/0-LN/vs/keybindings.json
ln ~/Library/Application\ Support/Code/User/settings.json ~/AXELRC/src/2-BKCONF/0-LN/vs/settings.json
ln ~/Library/Application\ Support/Code/User/keybindings.json ~/AXELRC/src/2-BKCONF/0-LN/vs/keybindings.json

# zsh
ln -sf ~/.zshrc ~/AXELRC/src/2-BKCONF/0-LN/.zshrc

# starship
ln -sf ~/.config/starship.toml ~/AXELRC/src/2-BKCONF/0-LN/starship.toml

# ---
# ---
# ---
# exercise on hard links
# These assume you have the macOS Auto-Save feature turned off.

# 1) Hard Link to a file while it is open:
# Create a new file called cake.jpg
# Open the file cake.jpg in Preview.app
# In Terminal, make a hard-link: ln cake.jpg link.jpg
# In Preview, rotate the image and then Save and Close - the changes will now be visible in both cake.jpg and link.jpg
# Delete cake.jpg : rm cake.jpg
# The data will be automatically copied into link.jpg and will still be readable.

# 2) Delete a file, while hard links to it are still open:
# Create a new file called flower.jpg
# In Terminal, make a hard-link: ln flower.jpg link.jpg
# Open the file link.jpg in Preview.app
# In Terminal, delete the original file: rm flower.jpg
# In Preview, rotate the image and then Save - the changes should be saved to link.jpg
# Many applications will fail to save the data in the above scenario, because they opened the original file which has since been deleted.

# 3) Create a Symbolic Link to a file while it is open:
# Create a new file called cake.jpg
# Open the file cake.jpg in Preview.app
# In Terminal, make a symbolic-link: ln -s cake.jpg sybm.jpg
# In Preview, rotate the image and then Save and Close - the changes will now be visible in both cake.jpg and symb.jpg
# Delete cake.jpg : rm cake.jpg
# The symbolic link symb.jpg now points to a nonexistent file, attempting to open it will give an error.

# 4) Delete a file, while Symbolic links to it are still open:
# Create a new file called flower.jpg
# In Terminal, make a symbolic-link: ln -s flower.jpg symb.jpg
# Open the file symb.jpg in Preview.app
# In Terminal, delete the original file: rm flower.jpg
# In Preview, rotate the image and then Save - you will be prompted to save under a new name
