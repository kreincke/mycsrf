# (c) Karsten Reincke, Frankfurt am Main, 2011
# compile one/all tex-files 
AUX_EXTS=url bbl blg aux dvi toc log lof nlo ilg nls
RES_EXTS=ps pdf bak
SUB_DIRS=bibfiles btexmat extracts snippets templates
#STICKDIR=~/Stick/mykeds.csr/
#WORKSDIR=~/gits/mykeds.csr/

all:
	echo "compiling single files only: make YOURFILE.{dvi|ps|pdf}"

#sync2stick:
#	mkdir -p ${STICKDIR}
#	rsync -v -a --delete --exclude="\.*" ${WORKSDIR} ${STICKDIR}

#sync2disc:
#	rsync -v -a --delete --exclude="\.*" ${STICKDIR} ${WORKSDIR}

.SUFFIXES: .tex .dvi .ps .pdf
.tex.dvi:
	@ echo "### `date +'%Y%m%dT%H%M%S'`" 
	@ echo "### converting $< to $@"
	@ latex $< 
	@ bibtex `basename $< .tex`
	@ makeindex `basename $< .tex`.nlo -s btexmat/nomencl.ist -o `basename $< .tex`.nls
	@ latex $< 
	@ latex $< 
	@ latex $< 

.dvi.ps:
	@ echo "### `date +'%Y%m%dT%H%M%S'`" 
	@ echo "### converting $< to $@"
	@ dvips $<

.ps.pdf:
	@ echo "### `date +'%Y%m%dT%H%M%S'`" 
	@ echo "### converting $< to $@"
	@ ps2pdf $<
	@ mv $@ `basename $@ .pdf`-`cat mycsrf.rel`.pdf


clearAuxFiles:
	$(foreach EXT, ${AUX_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)
clearResFiles:
	$(foreach EXT, ${RES_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)

clear:	clearAuxFiles
clean: 	clear clearResFiles

dclear: clear
	$(foreach DIR, ${SUB_DIRS}, cd ${DIR} && make clear && cd ..; done)

dclean: clean
	$(foreach DIR, ${SUB_DIRS}, cd ${DIR} && make clean && cd ..; done)

