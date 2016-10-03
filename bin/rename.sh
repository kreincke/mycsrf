#!/bin/bash

SOURCEPAT=mycsrf

TARGETPAT=myscrf

if [ "$#" = 2 ]; then
  SOURCEPAT=$1;
  TARGETPAT=$2; 
fi;

echo "replacing $SOURCEPAT by $TARGETPAT:";

echo "(1) renaming files containing $SOURCEPAT:";
find . -name "*$SOURCEPAT*" -not -iwholename ".git" | while read f; do
  nf=`echo $f | sed "s/$SOURCEPAT/$TARGETPAT/"`;
  echo "$f -> $nf"; 
  mv $f $nf; 
done 

echo "(2) replacing $SOURCEPAT in the files:";
find . -name "*.tex" -type f -not -iwholename ".git" | while read f; do
  cat $f | sed "s/$SOURCEPAT/$TARGETPAT/g" > x.x; 
  mv x.x $f; 
  echo "modified $f";
done
