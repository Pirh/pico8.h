#!/usr/bin/env bash

outfile=${1:-"pico8.h"}

function append()
{
    cat $1 >> $outfile
    echo "" >> $outfile
    echo "" >> $outfile
}

rm -f $outfile
echo "-- pico8.h --" >> $outfile
append constants.lua
append classes.lua
append vectors.lua
append grid.lua
append render.lua
append animation.lua
append aspects.lua
echo "-- end pico8.h --" >> $outfile