#!/bin/sh

if [[ $# -eq 0 ]]; then
  echo "Usage:"
  echo "cht.sh language [keyword]"
  exit 1
fi

CHTSH_URL="https://cht.sh/"

if [[ $# -eq 1 ]]; then 
  curl $CHTSH_URL$1
elif [[ $# -eq 2 ]]; then
  curl $CHTSH_URL/$1/$2
fi

