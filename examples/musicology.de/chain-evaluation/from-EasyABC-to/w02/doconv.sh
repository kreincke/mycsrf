#!/bin/bash

CONV=${HOME}/Downloads/easyabc/xml2abc.py
SFIL=cadenca3-from-easyabc.xml
CFIL=cadenca3-from-easyabc.abc
TFIL=cadenca3-from-easyabc-via-xml2abc.abc

XFIL=w02.tex


python ${CONV} -o ./ ../${SFIL}
mv ${CFIL} ${TFIL}

