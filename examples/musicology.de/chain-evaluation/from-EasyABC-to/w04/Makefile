LPWD=lily

prod:
	
	@ mkdir -p ${LPWD}
	@ ( cd ${LPWD} && lilypond-book --out . ../w04.tex )
	@ ( cd ${LPWD} && pdflatex ./w04.tex && mv w04.pdf ../)
	rm -rf ${LPWD}





