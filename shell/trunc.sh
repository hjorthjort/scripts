#!/bin/bash
function delete {
    printf "" > $1
    echo "Truncated $1"
}

function keep {
    echo "File untouched"
}
read -n1 -p "Truncate file? [yN]" delete
printf "\n"
case $delete in
    y|Y) delete $1 ;;
    *) keep ;;
esac

