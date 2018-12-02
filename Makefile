
PRJNAME='mycsrf'
LG=de

ifeq ($(PRJ),)
  ifeq ($(prj),)
    PRJ=${PRJNAME}
  else
    PRJ=$(prj)
  endif
endif

ifeq ($(lang),en)
  LG=en
endif

ifeq ($(LANG),en) 
  LG=en
endif


instance:
	echo "LG $(LG)"
	mkdir -p $(PRJ) ${PRJ}/bib ${PRJ}/cfg ${PRJ}/extracts ${PRJ}/copies ${PRJ}/tools ${PRJ}/snippets
	cp source/$(LG)/Makefile $(PRJ)/
	cp source/${LG}/nomencl.ist $(PRJ)/cfg/nomencl.ist
	cp source/${LG}/prj.tex $(PRJ)/$(PRJ).tex
	cp source/${LG}/rel.inc $(PRJ)/
	cp source/${LG}/frame.tex $(PRJ)/snippets/
	cp source/${LG}/inc.snippet.tex $(PRJ)/snippets/
	cp source/${LG}/SubMakefile $(PRJ)/snippets/Makefile
	cp source/${LG}/extract.tex $(PRJ)/extracts/
	cp source/${LG}/SubMakefile $(PRJ)/extracts/Makefile
	cp source/${LG}/list.tex $(PRJ)/tools/
	cp source/${LG}/search.tex $(PRJ)/tools/
	cp source/${LG}/verify.tex $(PRJ)/tools/
	cp source/${LG}/SubMakefile $(PRJ)/tools/Makefile
	cp source/${LG}/literature.bib $(PRJ)/bib/
	cp source/${LG}/ncl.* $(PRJ)/bib/
	cp source/${LG}/inc.* $(PRJ)/cfg/
	cp source/${LG}/jabref.* $(PRJ)/cfg/

help:
	@echo "make [prj|PRJ]='your-prj' [lang|LANG]='[de|en]'"

legacy:
	if [ -e deprecated ]; then rm -rf deprecated; fi
	mkdir -p deprecated
	cp pdfs/scholar-fono-de.pdf deprecated/fodinaClassicalScholarFoNoDe.pdf 
	cp pdfs/scholar-enno-de.pdf deprecated/fodinaHumanitiesEnNoDe.pdf 
	cp pdfs/scholar-fono-en.pdf deprecated/fodinaClassicalScholarFoNoEn.pdf 
	cp pdfs/scholar-enno-en.pdf deprecated/fodinaHumanitiesEnNoEn.pdf 

#  $(error PRJ is not set)
