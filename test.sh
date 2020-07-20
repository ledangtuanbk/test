#!/bin/bash
arr=(/home/tledang/temp/test/data*)

# iterate through array using a counter
for ((i=0; i<${#arr[@]}; i++)); do
    #do something to each element of array
    echo "${arr[$i]}"
    /home/tledang/temp/test/data.sh "${arr[$i]}"
done

#dir=/home/tledang/temp/JSON_DB_8353_SortedBy_SiteId/1228156512
#echo $dir
#arr=$(ls -R $dir|xargs)
#echo $arr
#echo "${#arr[0]}"
#echo "${#arr[1]}"

