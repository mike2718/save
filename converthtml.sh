#!/usr/bin/bash
js-beautify --type css -r -f css/style.css
rm -f index.html
lua ./tools/make_spec.lua html < README.md > index.html
tidy -m index.html
