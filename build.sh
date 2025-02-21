#!/bin/sh

for file in src/*.c3; do 
    readarray -d "." -t strarr <<< $file
    readarray -d "/" -t strarr <<< ${strarr[0]}
    output_name="bin/${strarr[1]}"

    c3c compile -o ${output_name} $file     
    echo "${file} -> ${output_name}"
done
