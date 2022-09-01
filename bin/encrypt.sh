#!/bin/bash

hash=$1
status=$2

to_pass="nothing to commit, working tree clean"

if [$status = $to_pass]
then
echo "$hash" | openssl pkeyutl -inkey key.txt -encrypt >output.bin
echo "$(<output.bin)"
else
echo "Please make sure you git add all the changes and committed!"