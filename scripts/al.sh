#!/bin/bash 
# script for adding aliases 

# this should be in .zshrc
sentinel="# @@@ALIAS"
cfg_path="$HOME/.zshrc"

# error handling
die () {
  echo >&2 "$@"
  exit 1
}

[ "$#" -eq 2 ] || die "Two arguments are required: the name of the \
alias followed by the value of the alias"
[ ! -z "$( grep "$sentinel" "$cfg_path")" ] || die "$cfg_path: file is \
missing sentinel: $sentinel"
alias followed by the value of the alias"

sed -i "s*$sentinel*$sentinel\nalias $1=\'$2\'*" "$cfg_path"
source ~/.zshrc
