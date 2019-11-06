#!/bin/bash

function cleanup(){
	rm -f "$TMPRC"
	exit
}
trap cleanup INT QUIT TERM EXIT

TMPRC=$(mktemp)
printf -v SESSION "%(%s)T-%.6i" -1 $RANDOM

cat <<-EOF > "$TMPRC"
split
split -v
focus top
screen
focus
screen
focus
split -v
screen
focus
screen

EOF

screen -S "$SESSION" -c "$TMPRC"
