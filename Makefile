CHAPTERS = intro.tex obtain.tex stats.tex class.tex nlp.tex frontmatter/preface.tex social.tex frontmatter/dedication.tex clean.tex basic.tex frontmatter/preamble.tex frontmatter/preface.tex frontmatter/symbollist.tex

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
