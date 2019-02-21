#!/bin/sh

SCRIPTS_PATH="${HOME}/.scripts/exec"

for script in $(ls $SCRIPTS_PATH | sed -E 's/(.*)(\.sh)$/\1/')
do
  ln -s "${SCRIPTS_PATH}/${script}.sh" "/usr/bin/${script}"
done
