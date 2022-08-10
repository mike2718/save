#!/usr/bin/bash
# 美化CSS
js-beautify --type css -r -f css/style.css
# 替换为今天的日期
today=$(date +%F)
sed -i -E "s/[12][0-9]{3}-[01][0-9]-[0-3][0-9]/${today}/g" README.md
# 生成并美化html文件
rm -f index.html
lua ./tools/make_spec.lua html < README.md > index.html
tidy -m index.html
