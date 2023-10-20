#!/bin/bash
git archive --format=tar.xz --prefix=save/ --output=/d/save.tar.xz main
rm -f README-sorted.md
cat README.md | awk '/^\|/' | sort > README-sorted.md

git add .gitattributes .gitignore make.cmd make.sh README.md save_path.md
