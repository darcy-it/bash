#!/bin/bash
#
#echo "$user@hostname:~$"

cp -p ./bashrc/bashrc-non-host.curdirOnly ~/.bashrc

# sh ~/.bashrc
exec $SHELL -l
# exec bash
# echo `. ~/.bashrc`
# echo ". ~/.bashrc"
# source ~/.bashrc