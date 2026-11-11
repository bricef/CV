
all: Brice-Fernandes-CV.pdf

Brice-Fernandes-CV.pdf: Brice-Fernandes-CV.tex
	texi2pdf Brice-Fernandes-CV.tex

no-keywords: Brice-Fernandes-CV-no-keywords.pdf

Brice-Fernandes-CV-no-keywords.pdf: Brice-Fernandes-CV-no-keywords.tex Brice-Fernandes-CV.tex
	texi2pdf --language=latex Brice-Fernandes-CV-no-keywords.tex

watch:
	echo "Brice-Fernandes-CV.tex" | entr texi2pdf Brice-Fernandes-CV.tex

clean:
	rm Brice-Fernandes-CV.{aux,log,fls,out,pdf}
	rm -f Brice-Fernandes-CV-no-keywords.{aux,log,fls,out,pdf}

spell: Brice-Fernandes-CV.tex
	aspell --mode=tex -d en_GB -c Brice-Fernandes-CV.tex

.PHONY: clean watch spell no-keywords
