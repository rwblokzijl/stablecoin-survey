FILES = paper.md

OUTPUT = Survey
PDF = Survey.pdf

FLAGS =--bibliography=../bibliography.bib \
	--csl=bibliography.csl \
	-s \
	-f markdown \
	-V tables \
	--natbib \
	--filter ../table-filter.py


FLAGS_PDF = --template=template.latex

all: pdf

run:
	evince $(PDF) > /dev/null 2>&1 &

# pdf:
# 	pandoc -o $(PDF) $(FLAGS) $(FLAGS_PDF) $(FILES)

pdf:
	cd deps && pandoc -o $(OUTPUT).tex $(FLAGS) $(FLAGS_PDF) ../$(FILES)
	# sed -i 's/\\end{longtable}/\\tabularnewline\n\\end{supertabular}\n\\caption{TODO \\label{TODO}}\n\\end{center}\\end{table*}/' $(OUTPUT)
	# sed -i 's/\\begin{longtable}/\\begin{table*}[t]\\begin{center}\\begin{supertabular}/' $(OUTPUT)
	# sed -i 's/columnwidth/textwidth/' $(OUTPUT)
	# sed -i '/\\endhead/d' $(OUTPUT)
	# sed -i '/\\endfirsthead/d' $(OUTPUT)
	cd deps && xelatex $(OUTPUT)
	cd deps && bibtex $(OUTPUT)
	cd deps && xelatex $(OUTPUT)
	cd deps && xelatex $(OUTPUT)
	cd deps && mv Survey.* ../build
	cp build/Survey.pdf .


	# pdflatex $(OUTPUT)

clean:
	rm build/*

