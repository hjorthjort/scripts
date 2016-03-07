#!/bin/bash

# First argument: The directory to look through
# Second argument: The string to look for
# Third argument: The string to replace it with


# Go through all commits with git filter-branch --tree-filter, and for each 
# commit, look for files containing the wanted string in the specified directory. 
# When found, repalce it with the new string

git filter-branch --tree-filter "grep -ilr '$2' $1 | xargs -I@ sed -i '' 's/$2/$3/g' @" HEAD
