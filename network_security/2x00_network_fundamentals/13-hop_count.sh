#!/bin/bash
tracepath -n "$1" | awk 'END{print $1-1}'
