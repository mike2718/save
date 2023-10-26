#!/bin/bash

git archive --format=tar.xz --prefix=save/ --output=../save.tar.xz main
cp -f ../save.tar.xz /d/

rm -f README-sorted.md
cat README.md | awk '/^\|/' | sort > README-sorted.md
cat save_path.md | awk '/^\|/' | sort > save_path-sorted.md

git add .gitattributes .gitignore make.cmd make.sh README.md save_path.md
