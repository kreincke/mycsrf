
PRJ=mcwm
SRC=source

prod:	clear
	mkdir -p $(PRJ) 
	cp -rd ${SRC}/bib ${PRJ}/
	cp -rd ${SRC}/cfg ${PRJ}/
	cp -rd ${SRC}/snippets ${PRJ}/
	cp ${SRC}/mcwm.tex ${PRJ}/
	cp ${SRC}/inc.rel.tex ${PRJ}/
	cp ${SRC}/Makefile ${PRJ}/
	cp -rd ${SRC}/pmx .
	(  cd pmx; \
	   find . -name "*.pmx" \
		| while read f; do echo $$f; make `basename $$f .pmx`.eps; done \
	)
	mkdir -p ${PRJ}/pics/pmx/
	mv pmx/*.eps ${PRJ}/pics/pmx
	rm -rf pmx
	( cd ${PRJ} && make mcwm.pdf && mv *.pdf ../ )
	rm -rf ${PRJ}

clear:
	@if [ -e ${PRJ} ]; then rm -rf ${PRJ}; fi
	@if [ -e pmx ]; then rm -rf pmx; fi


help:
	@echo "komt noch"

