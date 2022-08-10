#!/usr/bin/bash
rm index.html
lua ./tools/make_spec.lua html < README.md > index.html
tidy -m index.html
