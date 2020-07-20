#!/bin/bash

for f in originals/*.jpg; do
    name=$(echo $f | sed -r "s/.+\/(.+)\..+/\1/");
    out=$name.jpg
    if [ ! -f $out ]; then
        echo $out
        convert $f -resize 600x600 -quality 70 $out
    fi
done
