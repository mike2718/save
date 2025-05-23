#!/bin/bash

git archive --format=zip --prefix=save/ --output=../save.zip main
cp -f ../save.zip /c/Users/Saori/backup

cat README.md | awk '/^\|/' | sort > README-sorted.md
cat save_path.md | awk '/^\|/' | sort > save_path-sorted.md

git add .gitattributes .gitignore make.sh README.md save_path.md
