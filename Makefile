# (c) Karsten Reincke, Frankfurt am Main, Germany, 2011,2012,2013,2014
# compile a tex-files 

#LATEX=latex
LATEX=pdflatex

AUX_EXTS=url bbl blg aux dvi toc log lof nlo nls ilg ils ent out
RES_EXTS=ps pdf 
SUB_DIRS=bibfiles btexmat extracts snippets templates
T=CH


all:
	make README.pdf
	@ mv README-`cat mycsrf.rel`.pdf README.pdf
	
.SUFFIXES: .tex .dvi .ps .pdf .rtf

.tex.pdf:
	@ echo "### `date +'%Y%m%dT%H%M%S'`" 
	@ echo "### converting $< to $@"
	@ $(LATEX) $< 
	@ bibtex `basename $< .tex`
	@ makeindex `basename $< .tex`.nlo -s btexmat/nomencl.ist -o `basename $< .tex`.nls
	@ $(LATEX) $< 
	@ $(LATEX) $< 
	@ $(LATEX) $< 
ifneq ($(LATEX),pdflatex)
	@ echo "### converting DVI to PostScript"
	@ dvips $<
	@ echo "### converting PostScript to PDF"
	@ ps2pdf $<
endif
	@ mv $@ `basename $@ .pdf`-`cat mycsrf.rel`.pdf
	@ make dclear

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

