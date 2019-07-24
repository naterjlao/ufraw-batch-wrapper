#!/bin/bash
###############################################################################
# File: ufraw-batch-wrapper.sh
# Author: Nathaniel Lao (lao.nathan95@gmail.com)
#
# Processes all ARW picture files in the current directory.
# Used to avoid segmentation fault bug.
###############################################################################

CWD="$PWD/*.ARW"

for f in $CWD
do
  echo "Processing $f"
  ufraw-batch $f --out-type=jpeg --compression=99
done
 
