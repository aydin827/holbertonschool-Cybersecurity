#!/bin/bash
f(){ IFS=. read a b c d<<<$1;echo $((a<<24|b<<16|c<<8|d));};g(){ printf "%d.%d.%d.%d" $(($1>>24&255)) $(($1>>16&255)) $(($1>>8&255)) $(($1&255));};n=$(f "$1");m=$((0xffffffff << (32-$2) & 0xffffffff));g $((n&m+1));printf " - ";g $((n|~m&0xffffffff-1))
