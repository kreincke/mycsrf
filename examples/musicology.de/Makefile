
PRJ=mcwm
SRC=source
LPWD=lily

prod:	clear
	# (1) create a lilypond working directory and call the liypond pre operations 
	@ cp -rd ${SRC} ${LPWD}
	#@ mv ${LPWD}/mcwm.tex ${LPWD}/mcwm.lytex
	#@ ( cd ${LPWD} && lilypond-book --out ../${PRJ} mcwm.lytex )
	@ ( cd ${LPWD} && lilypond-book --out ../${PRJ} mcwm.tex )
	# (2) now lilypond has created has collected all source it needs into the final working dir i
	# but unfortunatelay not all. They are now copied into the final working dir
	# enssure that the dirs exist we need
	@ mkdir -p  ${PRJ}/bib/ ${PRJ}/cfg ${PRJ}/pics
	# (3) derive all pmx pictures	
	@ cp -rd ${SRC}/pmx .
	@ (  cd pmx; \
	   find . -name "*.pmx" \
		| while read f; do echo $$f; make `basename $$f .pmx`.eps; done \
	)
	@ mkdir -p ${PRJ}/pics/pmx/
	@ mv pmx/*.eps ${PRJ}/pics/pmx
	@ rm -rf pmx
	# (4) ensure that even the missed files can be found in the final working directory
	@ cp -rd ${SRC}/bib/* ${PRJ}/bib/
	@ cp -rd ${SRC}/cfg/* ${PRJ}/cfg/
	@ cp ${SRC}/inc.rel.tex ${PRJ}/
	@ cp ${SRC}/Makefile ${PRJ}/
	( cd ${PRJ} && make mcwm.pdf && mv *.pdf ../ )
	rm -rf ${LPWD}
	rm -rf ${PRJ}



clear:
	@if [ -e ${LPWD} ]; then rm -rf ${LPWD}; fi
	@if [ -e ${PRJ} ]; then rm -rf ${PRJ}; fi
	@if [ -e pmx ]; then rm -rf pmx; fi


help:
	@echo "komt noch"

