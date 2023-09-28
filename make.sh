#!/bin/bash
git archive --format=tar.xz --prefix=save/ --output=/d/save.tar.xz main
rm README-sorted.md
cat README.md | awk '/^\|/' | sort > README-sorted.md
