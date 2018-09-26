#!/bin/bash
# IFS is the internal field sparator, IFS='' prevents leading/trailing white space from being trimmed
# -r prevents backslash escapes from being interpreted
# || [[ -n $line]] prevents the last line from being ignored if it does't end with \n, since read returns a non-zero# exit code when it cencouters EOF.
# first while loop read file line by line, we use line to assign the value of each line
while IFS='' read -r line || [[ -n "$line" ]]; do
    # echo "Text read from file: $line"
    # second while loop split the arguments separated by ";"
    while IFS=';' read -ra args;do
  # in this example we submit a job matlab to UGE, 
  # -P P_bioaster : is the credential of which organization submit the job
 # -N ${args[2]} : is the name of job
# -pe multicores 8 : the job is multicore and takes 8 core, make sure the queue support multi core.
# -q mc_highmem_long : specify the queue of UGE to run the job
# In this example, the config file has 3 column, first column is the first arg of command.sh, second column is the second arg of command.sh, third column is the name of the job
    qsub -P P_bioaster -N ${args[2]} -pe multicores 8 -l sps=1,matlab=1 -q mc_highmem_long /path/to/command.sh ${args[0]} ${args[1]}
    done <<< "$line"
done < "$1"

