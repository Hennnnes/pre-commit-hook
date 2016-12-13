#!/bin/sh

ln -s hook/pre-commit-hook.sh .git/hooks/pre-commit

ECHO "Juhu! Symlink gesetzt, Pre Hook eingefügt."
exit 0
