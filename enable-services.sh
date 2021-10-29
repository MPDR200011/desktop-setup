#!/bin/sh

echo "Enabling lightdm"
systemctl enable lightdm

echo "Enabling fstrim.timer"
systemctl enable fstrim.timer
