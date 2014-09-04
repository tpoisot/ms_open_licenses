LX = pdflatex
BT = bibtex
TEXT = ms_liberal

all: $(TEXT).pdf

$(TEXT).pdf: $(TEXT).tex
	$(LX) $(TEXT).tex && $(BT) $(TEXT).aux && $(LX) $(TEXT).tex && $(LX) $(TEXT).tex

clean:
	rm *.aux *.log *.bbl *.out *.blg

