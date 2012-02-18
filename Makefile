.PHONY: clean-temp
all: Paper.dvi clean-temp

Paper.dvi: Paper.tex
	latex Paper.tex

clean-temp:
	rm -f Paper-blx.bib Paper.aux Paper.log Paper.out Paper.pdfsync Paper.run.xml Paper.toc messbox.aux
	rm -f *.tmp

Paper.html: Paper
	pod2html --title='Hybrid Threads for the Parrot Virtual Machine' Paper > Paper.html

clean:
	rm -f Paper.dvi Paper.html
