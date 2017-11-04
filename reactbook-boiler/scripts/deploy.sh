#!/usr/bin/sh

# cleanup
rm -rf __deployme
mkdir __deployme

# build
sh scripts/build.sh

# minify Javascript
uglify -s bundle.js -o __deployme/bundle.js
# minify css
cssshrink bundle.css > __deployme/bundle.css
# copy html and images
cp index.html __deployme/index.html
cp -r images/ __deployme/images/

# finish
date; echo;
