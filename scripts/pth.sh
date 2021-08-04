#!/bin/bash 
# script for adding paths to $PATH in ~/.zshrc

# this should go above where the $PATH additions are located in .zshrc
sentinel="# @@@PATH"
cfg_path="$HOME/.zshrc"

# error handling
die () {
  echo >&2 "$@"
  exit 1
}
[ "$#" -eq 1 ] || die "This script requires a single argument"
[ -d "$1" ] || die "This script requires a valid directory"
[ ! -z "$( grep "$sentinel" "$cfg_path")" ] || die "$cfg_path: config file is \
missing sentinel: $sentinel"


if [ ! "$#" -eq 1 ] ; then 
  echo "This script needs to be passed a single file path"
  return 1 2> /dev/null
fi

if [ -z "$(grep "$sentinel" "$cfg_path")" ] ; then 
  echo "$cfg_path: file missing sentinel: $sentinel"
  return 1 2> /dev/null
fi

sed -i "s*$sentinel*$sentinel\nexport PATH=$1:\$PATH*" "$cfg_path"
source ~/.zshrc
