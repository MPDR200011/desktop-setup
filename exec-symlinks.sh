#!/bin/sh

SCRIPTS_PATH="${HOME}/.scripts/exec"

for script in $(ls $SCRIPTS_PATH)
do
  sudo ln -s "${SCRIPTS_PATH}/${script}" "/usr/local/bin/${script}"
done

sudo cp -s /usr/bin/nvim /usr/local/bin/vim
