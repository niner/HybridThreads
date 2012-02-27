.PHONY: clean-temp
all: Paper.pdf clean-temp

Paper.pdf: Paper.tex literature.bib perlexample.tex
	latex --output-format=pdf Paper.tex
	bibtex8 Paper.aux
	latex --output-format=pdf Paper.tex
	scp Paper.pdf niner.name:public_html/Hybrid_Threads_for_the_Parrot_VM.pdf

clean-temp:
	rm -f Paper-blx.bib Paper.aux Paper.log Paper.out Paper.pdfsync Paper.run.xml Paper.toc messbox.aux
	rm -f *.tmp

Paper.html: Paper
	pod2html --title='Hybrid Threads for the Parrot Virtual Machine' Paper > Paper.html

clean:
	rm -f Paper.dvi Paper.html
