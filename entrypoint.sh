#!/bin/sh -l
cd /github/workspace/
FONTFILES=$(find $1  -name '*.otf' -or -name '*.ttf')
OUTPUTFORMATS=$3
OUTPUTS=""

case "$OUTPUTFORMATS" in
  *md*)
    $OUTPUTS="--ghmarkdown fontbakery.md"
    ;;
esac

case "$OUTPUTFORMATS" in
  *md*)
    $OUTPUTS="$OUTPUTS --html fontbakery.html"
    ;;
esac

fontbakery check-$2 $FONTFILES $OUTPUTS
