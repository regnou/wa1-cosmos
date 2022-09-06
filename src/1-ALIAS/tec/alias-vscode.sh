#!/bin/sh

#@@@ VS-CODE extension
#@@@ Choose `Shell Command: Install ‘code’ command in PATH
#@@@ git config --global core.editor "code --wait"
alias vscode--save-plugin="$CODE --list-extensions > extensions-VS-25-juill-2022.list"
alias vscode--load-plugin="cat extensions.list |% { $CODE --install-extension $_}"
