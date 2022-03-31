LATEX := xelatex --shell-escape -interaction=nonstopmode -halt-on-error
MAIN := main

.PHONY: clean

all : clean chapters/ figures/
	$(LATEX) "$(MAIN).tex" 

clean:
	rm -rf *run.xml *-blx.bib *.aux *.bbl *.blg *.brf *.log *.lof *.lot *.lol *.out *.tcp *.toc *.tps *.bak *.backup *.pdfsync *.synctex.gz *.*~
	for i in run.xml -blx.bib aux bbl blg brf log lof lot lol out tcp toc tps bak backup pdfsync synctex.gz; do find . -name *.$$i -exec rm -f {} + ; done
	find . -name *.*~ -exec rm -f {} +
