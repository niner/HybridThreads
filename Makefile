.PHONY: clean-temp

all: Paper.pdf Praktikum.pdf clean-temp

Paper.pdf: Paper.tex literature.bib perlexample.tex hgbthesis.cls
	latex --output-format=pdf Paper.tex
	bibtex8 Paper.aux
	latex --output-format=pdf Paper.tex

publish: Paper.pdf Praktikum.pdf
	scp Paper.pdf niner.name:public_html/Hybrid_Threads_for_the_Parrot_VM.pdf
	scp Praktikum.pdf niner.name:public_html/Praktikum.pdf

Praktikum.pdf: Praktikum.tex
	latex --output-format=pdf Praktikum.tex
	latex --output-format=pdf Praktikum.tex

clean-temp:
	rm -f Paper-blx.bib Paper.aux Paper.log Paper.out Paper.pdfsync Paper.run.xml Paper.toc messbox.aux
	rm -f Praktikum-blx.bib Praktikum.aux Praktikum.log Praktikum.out Praktikum.pdfsync Praktikum.run.xml Praktikum.toc
	rm -f *.tmp

clean:
	rm -f Paper.pdf Praktikum.pdf
