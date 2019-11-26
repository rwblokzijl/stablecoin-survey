FILES = paper.md

OUTPUT = Survey.pdf

FLAGS = --bibliography=bibliography.bib \
	--csl=deps/bibliography.csl \
	-s \
	-f markdown \
	-H deps/preamble.tex

FLAGS_PDF = --template=deps/template.latex

all: pdf

run:
	evince $(OUTPUT) > /dev/null 2>&1 &

pdf:
	pandoc -o $(OUTPUT) $(FLAGS) $(FLAGS_PDF) $(FILES)

clean:
	rm build/*

