#!/bin/bash
for i in 1 2 3 4; do if [ $1 -ge 8 ]; then echo -n 255; elif [ $1 -le 0 ]; then echo -n 0; else echo -n $
