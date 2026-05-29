#!/bin/bash
printf "%s\n" $(for i in {1..4}; do if [ $1 -ge 8 ]; then echo -n "255."; else v=$((256-(2**(8-$1)))); echo -n "$v."; fi; [ $((1<8?1:1)) ]; done)
