#!/bin/bash
# This script call the matlab function in calculator.m
cd /path/to/matlab/calculator.m
matlab -nodisplay -nosplash -nodesktop -r "try calculator(${1},${2}); catch; end; quit"
