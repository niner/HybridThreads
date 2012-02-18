Paper.dvi: Paper.tex
	latex Paper.tex
	rm rm Paper-blx.bib Paper.aux Paper.html Paper.log Paper.out Paper.pdfsync Paper.run.xml Paper.toc messbox.aux
Paper.html: Paper
	pod2html --title='Hybrid Threads for the Parrot Virtual Machine' Paper > Paper.html
	rm *.tmp
clean:
	rm -f Paper.dvi Paper.html
