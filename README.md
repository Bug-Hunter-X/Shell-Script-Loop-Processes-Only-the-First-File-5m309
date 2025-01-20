# Shell Script Loop Bug

This repository demonstrates a common error in shell scripting where a loop intended to iterate over an array only processes the first element.  The issue stems from improper quoting of array expansion within the loop. The `bug.sh` file contains the erroneous code, while `bugSolution.sh` provides the corrected version.  This example highlights the importance of careful array expansion in shell scripts to avoid unexpected behavior.

## Bug Description
The provided script uses an array to store file names. The loop aims to process each file, but due to improper quoting, only the first file is processed. The remaining files are not processed in the loop. 

## How to Reproduce
1. Create three dummy text files (file1.txt, file2.txt, file3.txt) in /tmp directory.
2. Run `bug.sh`.
3. Observe that only the first file is shown as being processed.
4. Run `bugSolution.sh`. Observe the difference.

## Solution
The solution is to use proper array expansion to iterate properly through all array elements. The corrected version uses `${files[@]}` rather than just `${files}`.