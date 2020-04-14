#!/bin/sh

set -e

nbdime config-git --enable

files=`find . -not -path '*/\.*' -type f -name '*.ipynb'`
for f in $files 
do
    if $output
    then
        nbdiff master $f --output `$f.diff`
    nbdiff master $f -s -o -m -a
done