#!/bin/bash

# This function read a file. for each line it calls the copy_files.sh and pass each line as the argument

# To call this main.sh, we need to creat a file which contains all the data you need to copy to the destination

# IFS is the internal field sparator, IFS='' prevents leading/trailing white space from being trimmed
# -r prevents backslash escapes from being interpreted
# || [[ -n $line]] prevents the last line from being ignored if it does't end with \n, since read returns a non-zero# exit code when it cencouters EOF.
# possible queue : mc_huge; mc_highmem_long; mc_longlasting
while IFS='' read -r line || [[ -n "$line" ]]; do
    # echo "Text read from file: $line"
    while IFS=';' read -ra args;do
   sh copy_files.sh ${args[0]}
 done <<< "$line"
done < "$1"

