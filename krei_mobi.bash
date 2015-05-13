#!/bin/bash
ebook-convert --version || ( echo "Vi bezonas havi calibre instalita kaj ebook-convert en via PATH" ; exit 1 )
mkdir mobi
cd epub
for file in *.epub; do ebook-convert "$file" "../mobi/$file.mobi" --output-profile=kindle; mutt $1 -a "mobi/$file.mobi" -s "" <<<""; done
cd ..
rename "s/.epub.mobi/.mobi_/" mobi/*.mobi
rm mobi/*.mobi
rename "s/.mobi_/.mobi/" mobi/*.mobi_ 
