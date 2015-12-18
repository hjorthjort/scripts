#!/bin/bash
git filter-branch --tree-filter "grep -ilr '$2' $1 | xargs -I@ sed -i '' 's/$2/$3/g' @" HEAD
