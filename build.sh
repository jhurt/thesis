#!/bin/bash

./lgrind -e clojure.tex > clojure-lgrind.tex
./lgrind -e implementation.tex > implementation-lgrind.tex
./lgrind -e xor-results.tex > xor-results-lgrind.tex


#create .aux file which includes keywords of any citations
pdflatex thesis
#use the .aux file to extract cited publications from the database in the .bib file, format them according to the indicated style, and put the results into in a .bbl file
bibtex thesis
#insert appropriate reference indicators at each point of citation, according to the indicated bibliography style
pdflatex thesis
#refine citation references and other cross-references, page formatting and page numbers
pdflatex thesis
