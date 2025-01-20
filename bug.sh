#!/bin/bash

# This script attempts to process a list of files, but it contains a subtle error.
# It uses a loop that processes only the first file and ignores others

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  echo "Processing: $file"
  # some process on the file
done