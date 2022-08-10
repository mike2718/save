#!/usr/bin/bash
lua tools/make_spec.lua html < README.md > index.html
tidy -m index.html
