.PHONY: all clean

DEPENDS=$(shell ls *.tex)
NAME=conpro
PDF=evince
all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex $(DEPENDS)
	rubber -f --pdf --warn all $<

fast:
	pkill Preview || true && pdflatex $(NAME).tex && bibtex $(NAME) && pdflatex $(NAME).tex && $(PDF) $(NAME).pdf

$(PDF):
	pkill Preview || true && $(PDF) $(NAME).pdf

clean:
	rm -rf *.aux *.bbl *.blg *.log *.pdf *.toc *.snm *.out *.nav tags auto
