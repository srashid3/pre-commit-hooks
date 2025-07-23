#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 <keyword1> [<keyword2> ...]"
  exit 1
fi

files=$(git diff --cached --name-only)

for file in $files; do
  if [ ! -f "$file" ]; then
    continue
  fi

  file_content=$(git show ":$file")

  for keyword in "$@"; do
    if echo "$file_content" | grep -q "$keyword"; then
      git rm --cached "$file"
      break
    fi
  done
done

exit 0
