# (c) Karsten Reincke, Frankfurt am Main, Germany, 2011 ff
# This file is licensed under the Creative Commons Attribution 3.0 Germany
# for details see LICENSE in the top directory

IMGDIR=../pics

AUX_EXTS=log tex ps pml dat
RES_EXTS=eps pdf 

.SUFFIXES: .pmx .tex .ps .pdf .eps

.pmx.pdf:
	@ echo "### `date +'%Y%m%dT%H%M%S'`" 
	@ echo "### converting $< to $@"
	@ make $< `basename $< .pmx`.tex
	@ musixtex `basename $< .pmx`.tex
	@ make clearAuxFiles

.pmx.eps:
	@ echo "### `date +'%Y%m%dT%H%M%S'`" 
	@ echo "### converting $< to $@"
	@ make $< `basename $< .pmx`.tex
	@ musixtex -g `basename $< .pmx`.tex
	@ ps2eps `basename $< .pmx`.ps
	#@ echo deleting all generated pdfs in ${IMGDIR}
	#@ if [ ! "x`ls *.pdf 2>/dev/null`" = "x" ]; then rm *.pdf; fi; 
	#@ mv `basename $< .pmx`.eps ${IMGDIR}/pmx-`basename $< .pmx`.eps
	@ make clearAuxFiles


.pmx.tex:
	@ pmxab $<

clearAuxFiles:
	$(foreach EXT, ${AUX_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)

clean:	clearAuxFiles
	$(foreach EXT, ${RES_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)

