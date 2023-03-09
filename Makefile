
all: Brice-Fernandes-CV.pdf

Brice-Fernandes-CV.pdf: Brice-Fernandes-CV.tex
	texi2pdf Brice-Fernandes-CV.tex	

watch:
	echo "Brice-Fernandes-CV.tex" | entr texi2pdf Brice-Fernandes-CV.tex

clean:
	rm Brice-Fernandes-CV.{aux,log,fls,out,pdf}

spell: Brice-Fernandes-CV.tex
	aspell --mode=tex -d en_GB -c Brice-Fernandes-CV.tex

.PHONY: clean watch spell
