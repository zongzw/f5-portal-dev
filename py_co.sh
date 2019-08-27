#!/bin/bash 

cdir=`cd $(dirname $0); pwd`

find $cdir/horizon -name "*.py[c|o]" -exec rm -f {} \;
