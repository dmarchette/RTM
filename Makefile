CHAPTERS = intro.tex obtain.tex stats.tex class.tex nlp.tex preface.tex social.tex dedication.tex clean.tex basic.tex preamble.tex preface.tex symbollist.tex

text.pdf: text.tex ${CHAPTERS} references.bib 
	pdflatex text
	bibtex text
	pdflatex text
	pdflatex text
	makeindex text
	pdflatex text
	evince text.pdf 

clean:
	rm *.aux *.bbl text.pdf *.ind *.blg *.toc *.idx *.ilg *.log
