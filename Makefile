CHAPTERS = intro.tex obtain.tex class.tex nlp.tex preface.tex social.tex dedication.tex clean.tex basic.tex preamble.tex symbollist.tex stats.tex

text.pdf: text.tex ${CHAPTERS} references.bib 
	pdflatex text
	bibtex text
	pdflatex text
	pdflatex text
	makeindex text
	pdflatex text
	evince text.pdf 

intro.tex: intro.Rnw
	Rscript -e "source('libraries.R');library(knitr);knit('intro.Rnw')"
text.tex: text.Rnw
	Rscript -e "source('libraries.R');library(knitr);knit('text.Rnw')"
obtain.tex: obtain.Rnw
	Rscript -e "source('libraries.R');library(knitr);knit('obtain.Rnw')"
class.tex: class.Rnw
	Rscript -e "source('libraries.R');library(knitr);knit('class.Rnw')"
nlp.tex: nlp.Rnw
	Rscript -e "source('libraries.R');library(knitr);knit('nlp.Rnw')"
preface.tex: preface.Rnw
	Rscript -e "source('libraries.R');library(knitr);knit('preface.Rnw')"
social.tex: social.Rnw
	Rscript -e "source('libraries.R');library(knitr);knit('social.Rnw')"
clean.tex: clean.Rnw
	Rscript -e "source('libraries.R');library(knitr);knit('clean.Rnw')"
basic.tex: basic.Rnw
	Rscript -e "source('libraries.R');library(knitr);knit('basic.Rnw')"
stats.tex: stats.Rnw
	Rscript -e "source('libraries.R');library(knitr);knit('stats.Rnw')"

clean:
	rm *.aux *.bbl text.pdf *.ind *.blg *.toc *.idx *.ilg *.log
