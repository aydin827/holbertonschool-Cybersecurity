#!/bin/bash
for i in 1 2 3 4; do if [ $1 -ge 8 ]; then echo -n 255; elif [ $1 -le 0 ]; then echo -n 0; else echo -n $((256-(2**(8-$1)))); fi; [ $i -lt 4 ] && echo -n .; [ $1 -ge 8 ] && $((1-=8)) >/dev/null || true; done; echo
