#!/bin/zsh
#FILENAME=(basename $1)
FILENAME=$1:t
FILENAME=$FILENAME:r
./convert_to_pdf.sh "${FILENAME}.md"
git add "Sources/${FILENAME}.md"
git add "Papers/${FILENAME}.pdf"
git add "Notes/${FILENAME}.pdf"
git add README.md
git commit -m "sync"
git push

