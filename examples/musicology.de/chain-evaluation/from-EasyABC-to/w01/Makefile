w01:
	@ mkdir -p abc
	@ pdflatex w01.tex
	@ pdflatex --shell-escape w01.tex
	@ mv *.ps abc/
	@ pdflatex --shell-escape w01.tex
	rm -rf abc
