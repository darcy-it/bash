#!/bin/bash
#
#echo "$user@hostname:dirfullpath$"

#cp -p bashrc-non-host ~/.bashrc

cp -p ./bashrc/bashrc.org.default ~/.bashrc


#exec $SHELL -l
# exec bash
sh ~/.bashrc
# echo `. ~/.bashrc` # NG
# echo ". ~/.bashrc" # NG
# source ~/.bashrc #NG
