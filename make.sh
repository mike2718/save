#!/bin/bash

git archive --format=zip --prefix=save/ --output=/c/Users/Saori/backup/save.zip main

cat README.md | awk '/^\|/' | sort > README-sorted.md
cat save_path.md | awk '/^\|/' | sort > save_path-sorted.md

git add .gitattributes .gitignore make.sh README.md save_path.md
