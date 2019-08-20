#!/bin/bash 

source $(dirname $0)/cdir.rc

if [ $# -ne 2 ]; then echo "$0 co1 co2"; exit 1; fi


(
    cd $cdir
    
    filelist=`git diff $1 $2 | grep -E "^\+\+\+ b/horizon/" | grep -oE "horizon/.*$"`
    filelist=`git diff $1 $2 --name-only horizon/`

    mkdir -p dist 
    rm -rf dist/*
    for n in $filelist; do 
        echo $n;
        d=`echo $n | sed 's/horizon/dist/'`
        echo $d
        mkdir -p $(dirname $d)
        cp $n $d
    done
)
