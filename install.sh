#!/bin/bash

chmod +x git-pull-all.sh

sudo ln -sf "$(pwd)/git-pull-all.sh" /usr/local/bin/git-pull-all
echo "Installed git-pull-all globally."
