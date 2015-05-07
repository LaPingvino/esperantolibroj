#!/bin/bash
ebook-convert --version || ( echo "Vi bezonas havi calibre instalita kaj ebook-convert en via PATH" ; exit 1 )
mkdir mobi
cd epub
for file in *.epub; do ebook-convert "$file" "../mobi/$file.mobi"; done
cd ..
rename "s/.epub.mobi/.mobi/" mobi/*.mobi
