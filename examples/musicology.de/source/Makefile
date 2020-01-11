# (c) Karsten Reincke, Frankfurt am Main, Germany, 2011 ff
# This file is licensed under the Creative Commons Attribution 3.0 Germany
# for details see LICENSE in the top directory

#LATEX=latex
LATEX=pdflatex

AUX_EXTS=sav bak url bbl blg aux dvi toc log lof nlo nls ilg ils ent out log mx1 mx2 dat pml gz
RES_EXTS=ps pdf 
SUB_DIRS=cfg bib
T=CH

ABCTMP=abc

REL=inc.rel.tex
WORK=latex-musicology

all:
	make ${WORK}.pdf

	
.SUFFIXES: .tex .dvi .ps .pdf .rtf 

.tex.pdf:
	@ echo "### `date +'%Y%m%dT%H%M%S'`" 
	@ echo "### converting $< to $@"
# (A) creating a temporary directory for storing the abc help files
	mkdir -p ${ABCTMP}
# (B) the first latex pass which extracts some default infos and the abc-files
	@ $(LATEX) $<
# (C) creating the help files for the literature	
	@ bibtex `basename $< .tex`
	@ makeindex `basename $< .tex`.nlo -s cfg/nomencl.ist -o `basename $< .tex`.nls
# (D) creating the help files for musixtex snippets
	@ musixflx $<
# (E) integrating the musixtex files
	@ $(LATEX) $< 
# (F) generating the abc picture by calling the external program abcm2ps
	@ $(LATEX) --shell-escape $<
# (G) mv the results into the temporary directory to enable the next pass to integrate (find) them
	mv *.ps abc/
# (H) create the final document	
	@ $(LATEX) --shell-escape $< 
# (I) mv the recreated results also into the temporary directory for a better cleansing
#	mv *.ps abc/
ifneq ($(LATEX),pdflatex)
	@ echo "### converting DVI to PostScript"
	@ dvips $<
	@ echo "### converting PostScript to PDF"
	@ ps2pdf $<
endif
# (K) cleasing the environment
	@ mv $@ `basename $@ .pdf`-`cat ${REL}`.pdf
	@ rm -rf ${ABCTMP}/*
	@ echo "preserve dir eclipse auto build" > ${ABCTMP}/save.txt
	@ make clearAuxFiles

.tex.dvi:
	@ echo "### `date +'%Y%m%dT%H%M%S'`" 
	@ echo "### converting $< to $@"
	@ latex $< 
	@ bibtex `basename $< .tex`
	@ makeindex `basename $< .tex`.nlo -s cfg/nomencl.ist -o `basename $< .tex`.nls
	@ latex $< 
	@ latex $< 
	@ latex $< 

.dvi.ps:
	@ echo "### `date +'%Y%m%dT%H%M%S'`" 
	@ echo "### converting $< to $@"
	@ dvips $<

clearAuxFiles:
	$(foreach EXT, ${AUX_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)

clean:	clearAuxFiles
	$(foreach EXT, ${RES_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)

clear:	clean

dclean:
	echo '#!/bin/bash' > xc.sh
	echo FEXT="\"`echo $(AUX_EXTS) | sed 's/ /|/g'`\"" >> xc.sh
	echo 'find . | egrep "\.($$FEXT)" | while read f; do echo "deleting $$f"; rm $$f; done' >> xc.sh
	chmod 755 xc.sh
	./xc.sh
	rm xc.sh
