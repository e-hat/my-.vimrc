#!/bin/bash 

# error handling
die () {
  echo >&2 "$@"
  exit 1
}

[ "$#" -eq 1 ] || die "This script requires a single argument"
[ -f "$PWD/$1" ] || die "$PWD/$1 is not a file that exists"

dest="$1"
# assuming bash scripts end with .sh
if [ "$1" =~ ^.*\.sh$ ] ; then 
  dest=$(echo "$1" | awk '{print substr($0,0,length($0)-3)}')
fi

# getting the filename from a path
dest=$(basename "$dest")

chmod u+x "$1" && ln -s "$PWD/$1" "$HOME/bin/$dest"
