#!/bin/bash
# Script for New Year - Sakdipat 2024

# Config
caption='Here`s to health, wealth, and all-around success.' 
wish='Happy New Year 2024 !' 
name='by Sakdipat O. '
correction=0


trap "tput reset; tput cnorm; exit" 2


tput civis

line=6
middle_column=$(($(tput cols) / 2))
color=0

while true; do
    randomValue=$((RANDOM % 16 + 16)) ##
    from_middle=$((middle_column-randomValue))
    column=$((RANDOM % (randomValue) * 2 + 1 + from_middle))
    tput setaf $color; tput bold

    tput cup 6 $column
    echo '#'


    color=$(((color+7)%8))

    from_middle=-16 # from left column
    for l in H A P P Y
    do
        tput cup $((line+1)) $((middle_column+from_middle))
        echo $l
        let from_middle++
        sleep 0
    done

    from_middle=-8
    for l in N E W
    do
        tput cup $((line+2)) $((middle_column+from_middle))
        echo $l
        let from_middle++
        sleep 0
    done

    from_middle=8
    for l in Y E A R
    do
        tput cup $((line+3)) $((middle_column+from_middle))
        echo $l
        let from_middle++
        sleep 0
    done

    from_middle=16
    for l in 2 0 2 4
    do
        tput cup $((line+4)) $((middle_column+from_middle))
        echo $l
        let from_middle++
        sleep 0
    done

    spaceCount=$((middle_column/9 + correction))
    spaces=""
    for (( c=1; c<=$spaceCount; c++ ))
    do
        spaces+=" "
    done




    tput cup 11 $column
    echo '#'

    caption_length=${#caption}
    caption_start=$((middle_column - caption_length / 2))
    tput cup 13 $caption_start
    echo "$caption"


    wish_length=${#wish}
    wish_start=$((middle_column - wish_length / 2))
    tput cup 15 $wish_start
    echo "$wish"
	
    name_length=${#name}
    name_start=$((middle_column - name_length / 2))
    tput cup 17 $name_start
    echo "$name"
    
done








