#!/usr/bin/bash
#
# file: gitPush.sh
#

#bash --version

# Availability of .git
echo "ls -ld .* | grep git"
echo `ls -ld`

git add .
git commit -m "commit"
git push
