#!/bin/bash
ip2dec(){ IFS=. read a b c d <<< "$1"; echo $((a<<24|b<<16|c<<8|d)); }
dec2ip(){ printf "%d.%d.%d.%d" $((($1>>24)&255)) $((($1>>16)&255)) $((($1>>8)&255)) $(($1&255)); }
dec2ip $(( $(ip2dec "$1") & $(ip2dec "$2") ))
