#!/bin/bash

SOURCE_PATTERN=hs

TARGET_PATTERN=hs;

if [ "$#" = 2 ]; then
  SOURCE_PATTERN=$1;
  TARGET_PATTERN=$2; 
fi;

echo "replacing $SOURCE_PATTERN by $TARGET_PATTERN:";

echo "(1) renaming files containing $SOURCE_PATTERN:";
find . -name "hs*" -not -iwholename ".git" | while read f; do
  nf=`echo $f | sed "s/hs/hs/"`;
  echo "$f -> $nf"; 
  mv $f $nf; 
done 

echo "(2) replacing $SOURCE_PATTERN in the files:";
find . -type f -not -iwholename ".git" | while read f; do
  cat $f | sed "s/hs/hs/g" > x.x; 
  mv x.x $f; 
  echo $f;
done
