# (c) Karsten Reincke, Frankfurt am Main, Germany, 2011 ff
# This file is licensed under the Creative Commons Attribution 3.0 Germany
# for details see LICENSE in the top directory

IMGDIR=../pics

AUX_EXTS=
RES_EXTS=eps pdf midi 

play:
	timidity $<

.SUFFIXES: .ly .tex .ps .pdf .eps

.ly.pdf:
	@ echo "### `date +'%Y%m%dT%H%M%S'`" 
	@ echo "### converting $< to $@"
	@ lilypond $< 
	@ make clearAuxFiles

clearAuxFiles:
	$(foreach EXT, ${AUX_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)

clean:	clearAuxFiles
	$(foreach EXT, ${RES_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)

