all: slides.pdf

stylefruits.pdf: stylefruits.svg
	inkscape --without-gui --export-pdf=$@ $(basename $@).svg

slides.pdf: slides.tex stylefruits.pdf
	latexmk $(basename $@)

watch:
	$(MAKE) all
	latexmk -pvc slides.tex
