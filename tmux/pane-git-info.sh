#!/bin/sh
cd "$1" || exit 0
b=$(git branch --show-current 2>/dev/null) || exit 0
tl=$(git rev-parse --show-toplevel 2>/dev/null) || exit 0
echo "$(basename "$tl") [$b]"
