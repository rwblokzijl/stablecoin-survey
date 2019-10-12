FILES = paper.md

OUTPUT = build

FLAGS = --bibliography=bibliography.bib \
	--csl=deps/bibliography.csl \
	-s \
	-f markdown \
	-H deps/preamble.tex

FLAGS_PDF = --template=deps/template.latex

all: pdf

pdf:
	pandoc -o paper.pdf $(FLAGS) $(FLAGS_PDF) $(FILES)

clean:
	rm build/*

