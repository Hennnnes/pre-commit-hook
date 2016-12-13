#!/bin/sh

cp hooks/pre-commit-hook.sh .git/hooks/pre-commit

ECHO "Erfolg! Datei wurde kopiert, Pre Hook eingefügt."
exit 0
