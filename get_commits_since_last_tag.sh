#!/bin/bash

filename=temp.log
git log --oneline $(git describe --tags --abbrev=0 @^)..@ >> $filename
while read line; do
  echo "::notice::$line"
done < $filename
rm $filename