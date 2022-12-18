#!/usr/bin/env bash
printf "Enter the First Number: "
read -r a
ssh-keygen -t ed25519 -C "$a"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
