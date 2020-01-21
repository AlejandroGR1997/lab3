#!/bin/bash


let n=$(wc -l $1 | cut -d" " -f1)/7

head -n $n $1 > $1+basico
