#!/bin/sh

SCRIPTS_PATH="${HOME}/.scripts/exec"
DEST="${HOME}/.local/bin"
mkdir -p $DEST

for script in $(ls $SCRIPTS_PATH)
do
  sudo ln -s "${SCRIPTS_PATH}/${script}" $DEST
done
