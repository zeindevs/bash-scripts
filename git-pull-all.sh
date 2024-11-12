#!/bin/bash

dirs=($(find . -maxdepth 1 -type d -exec test -d "{}/.git" \; -print))
total=${#dirs[@]}
count=0
for d in "${dirs[@]}"; do
    ((count++))
    echo "[$count/$total] Pulling in $d"
    (cd "$d" && git pull)
done
