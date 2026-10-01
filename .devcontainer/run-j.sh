#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: run-j.sh <file.ijs>" >&2
  exit 2
fi

if [[ ! -f "$1" ]]; then
  echo "J file not found: $1" >&2
  exit 2
fi

temporary_file=$(mktemp --suffix=.ijs)
trap 'rm -f "$temporary_file"' EXIT
cat -- "$1" > "$temporary_file"
printf "\n2!:55''\n" >> "$temporary_file"

"$J_HOME/bin/jconsole" -js "0!:0 < '$temporary_file'"