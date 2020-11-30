#!/bin/sh -l
cd /github/workspace/
FONTFILES=$(find $1  -name '*.otf' -or -name '*.ttf')

echo $FONTFILES

fontbakery check-$2 $FONTFILES
