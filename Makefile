all: slides.pdf

slides.pdf: slides.tex
	latexmk $(basename $@)

watch:
	$(MAKE) all
	latexmk -pvc slides.tex
