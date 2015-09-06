#! /bin/bash
# Write sorted file length (lines) list in sorted_lengths.txt
# Usage: sorted_lengths.sh filenames
wc -l $* | sort -n > sorted_lengths.txt
