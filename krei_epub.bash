#!/bin/bash
pandoc --version || ( echo "Vi bezonas havi pandoc instalita kaj en via PATH" ; exit 1 )
mkdir epub
for file in *.md; do [ "x$file" != "xREADME.md" ] && pandoc "$file" postglui.text -o "epub/$file.epub"; echo Faris $file; done
rename "s/.md.epub/.epub_/" epub/*.epub
rm epub/*.epub
rename "s/.epub_/.epub/" epub/*.epub_
