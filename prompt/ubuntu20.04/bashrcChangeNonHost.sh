#!/bin/bash
#
# file: 

#
# be after. yes/no.
#
echo ""
echo -n "user@dirCurrentOnly:~$"
echo "" && echo ""


read -p "ok? (y/N): " yn
case "$yn" in
  [nN]) exit 0;;
  [yY]) ;;
  *)
    echo "abort"
    exit 0
    ;;
esac

echo "Yes"

# read -n1 -p "ok? (y/N): " yn
# if [[ $yn = [yY] ]]; then
#   echo hello
# else
#   echo abort
# fi

exit 0

#
# backup bashrc
#
mkdir -p ~./bk

cd 
exit 0

cp -p bashrc-non-host ~/.bashrc

exec bash
