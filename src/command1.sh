#!/bin/bash
# This script pass parameter into a matlab script. Beware the script can't contain clear all (or something like that which clean the matlab memory)
cd /path/to/matlab/noFunCalculator.m
matlab -nodisplay -nosplash -nodesktop -r "try x='${1}';y=${2}; noFunCalculator; catch; end; quit"

