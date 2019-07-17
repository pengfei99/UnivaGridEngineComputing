#!/bin/bash
# define two parameters
# destPath is the path of the destination which the files will be copied
# logFilePath is the path of the logFile
destPath="/sps/bioaster/pt6/pliu/test"
logFilePath="copy_file.log"
rsync -rzh $1 ${destPath} >> ${logFilePath}
#echo "#rsync -rzh $1 ${destPath} >> ${logFilePath}"

