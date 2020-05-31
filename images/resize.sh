#!/bin/bash

# Doesn't overwrite (I think)

for f in originals/*.jpg; do
    name=$(echo $f | sed -r "s/.+\/(.+)\..+/\1/");
    out=$name.jpg
    if [ ! -f $out ]; then
        convert $f -resize 600x600 -quality 70 $out
    fi
done
