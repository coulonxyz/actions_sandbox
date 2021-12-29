#!/bin/bash

while read line; do
  echo "::notice::$line"
done < <(git log --oneline $(git describe --tags --abbrev=0 @^)..@)