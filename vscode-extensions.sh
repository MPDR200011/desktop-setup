#!/bin/sh

# VsCode Extensions
echo "Installing vscode extensions."
cat ./code-extensions.txt | xargs -L 1 code --install-extension