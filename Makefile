
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
	cp source/${LG}/extract.tex $(PRJ)/tools/
	cp source/${LG}/verify.tex $(PRJ)/tools/
	cp source/${LG}/SubMakefile $(PRJ)/tools/Makefile
	cp source/${LG}/literature.bib $(PRJ)/bib/
	cp source/${LG}/ncl.* $(PRJ)/bib/
	cp source/${LG}/inc.* $(PRJ)/cfg/

help:
	@echo "make PRJ='your-prj' LANG='[de|en]'"

#  $(error PRJ is not set)
