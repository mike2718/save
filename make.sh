#!/bin/bash
git archive --format=tar.zst --prefix=save/ --output=/d/save.tar.zst main
rm README-sorted.md
cat README.md | awk '/^\|/' | sort > README-sorted.md
