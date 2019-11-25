ISNM=latex-musicology
ISWD=${ISNM}
SRCD=source
LPWD=lily

prod:	clear
	# (1) create a lilypond working directory and call the lilypond pre operations 
	@ cp -rd ${SRCD} ${LPWD}
	@ ( cd ${LPWD} && lilypond-book --out ../${ISWD} ${ISNM}.tex )
	# (2) now lilypond has created & collected all sources it needs into the final working dir
	# but unfortunatelay not all sources. The missed parts must be copied into that dir manually
	# (3) ensure that the dirs exist we need
	@ mkdir -p  ${ISWD}/bib/ ${ISWD}/cfg ${ISWD}/pics
	# (3) derive all pmx pictures	
	@ cp -rd ${SRCD}/pmx .
	@ (  cd pmx; \
	   find . -name "*.pmx" \
		| while read f; do echo $$f; make `basename $$f .pmx`.eps; done \
	)
	@ mkdir -p ${ISWD}/pics/pmx/
	@ mv pmx/*.eps ${ISWD}/pics/pmx
	@ rm -rf pmx
	# (4) ensure that also the missed files can be found in the final working directory
	@ cp -rd ${SRCD}/bib/* ${ISWD}/bib/
	@ cp -rd ${SRCD}/cfg/* ${ISWD}/cfg/
	@ cp -rd ${SRCD}/frontends/ ${ISWD}/
	@ cp -rd ${SRCD}/logos/ ${ISWD}/
	@ cp ${SRCD}/inc.rel.tex ${ISWD}/
	@ cp ${SRCD}/picins.sty ${ISWD}/
	@ cp ${SRCD}/Makefile ${ISWD}/
	( cd ${ISWD} && make ${ISNM}.pdf && mv *.pdf ../ )
	rm -rf ${LPWD}
	rm -rf ${ISWD}


inst:	prod
	if [ -e ../../pdfs/${ISNM}.pdf ]; then rm ../../pdfs/${ISNM}.pdf; fi
	cp ${ISNM}*.pdf ../../pdfs/${ISNM}.pdf

clear:
	@if [ -e ${LPWD} ]; then rm -rf ${LPWD}; fi
	@if [ -e ${ISWD} ]; then rm -rf ${ISWD}; fi
	@if [ -e pmx ]; then rm -rf pmx; fi

clean:
	@(cd source && make clean && make dclean)
	@rm *.pdf
help:
	@echo "komt noch"

