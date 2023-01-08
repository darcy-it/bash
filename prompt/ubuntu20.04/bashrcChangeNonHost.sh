#!/bin/bash
#
# file: 

# os/bash version

#
# be after. yes/no.
#
echo ""
echo -n "user@dirCurrentOnly:~$"
echo "" && echo ""


read -p "ok? (y/N): " yn
case "$yn" in
  [nN]) 
    echo "abort"
    exit 0;;
  [yY]) ;;
  *)
    echo "abort"
    exit 0
    ;;
esac

#
# backup bashrc
#
mkdir -p ~/.bk/bashrc
# cp -p ~/.bashrc ~/.bk/bashrc/bashrc.`date +%Y.%m%d`
# cp -p ~/.bashrc ~/.bk/bashrc/bashrc.`date +%Y.%m%d.%H%M%S`
cp -p ~/.bashrc ~/.bk/bashrc/bashrc.`date +%Y.%m%d.%H%M`
cp -p ~/.bashrc ~/.bk/bashrc/bashrc.latest

#
# Confirmation of settings
#
echo ""
echo "$ ls -l ~/.bk/bashrc"
ls -l ~/.bk/bashrc

#
# setting ~/.bashrc
#
# exit 0
# cp -p ./bashrc/bashrc-non-host ~/.bashrc
# delete line 60
OUTPUTFILE="$HOME/.bashrc"
cat $OUTPUTFILE | (rm $OUTPUTFILE; grep -v -e 60 > $OUTPUTFILE)
TMP=" \ \ \ \ \PS1=\'\$\{debian_chroot:+\(\$debian_chroot\)}\\\[\\\033[01\;32m\\\]\\\u@\\\h\\\[\\\033[00m\\\]:\\\[\\\033[01\;34m\\\]\\\w\\\[\\\033[00m\\\]\\\\$ \'"
sed -i -e "60i $TMP" $OUTPUTFILE

#----------------------------------------
#　Confirmation after setup
#----------------------------------------
diff ~/.bashrc ~/.bk/bashrc/bashrc.latest

#----------------------------------------
# Configuring Reflection
#----------------------------------------
exec bash
# sh ~/.bashrc # NG
# . ~/.bashrc # NG
# source ~/.bashrc # NG

exit 0
