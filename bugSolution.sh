#!/bin/bash

# This script demonstrates the corrected way to process a list of files.
# It uses a loop that correctly processes all files in the array.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  echo "Processing: $file"
  # some process on the file
done