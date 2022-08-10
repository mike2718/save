#!/usr/bin/bash
rm index.html
lua ~/dev/commonmark-spec/tools/make_spec.lua html < README.md > index.html
tidy -m index.html
