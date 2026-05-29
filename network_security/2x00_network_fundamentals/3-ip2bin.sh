#!/bin/bash
echo "$1" | awk -F. '{for(i=1;i<=4;i++){printf "%08d%s", strtonum("0b" dec2bin($i)), (i<4?".":"\n")}}'
