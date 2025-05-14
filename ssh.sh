#!/usr/bin/env bash

#Setup git

ssh-keygen -q -t ed25519 -f /home/user/.ssh/id_ed25519 -N "" -C "dd.manders@protonmail.com"
ssh-keygen -q -t ed25519 -f /home/user/.ssh/id_ed25519_school -N "" -C "django.manders@student.hu.nl"

ln -sf "${configfiledir}/config" "${HOME}/.ssh/config"

