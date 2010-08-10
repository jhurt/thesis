#!/bin/bash

./lgrind -e clojure.tex > clojure-lgrind.tex
./lgrind -e xor-results.tex > xor-results-lgrind.tex
latex thesis
bibtex thesis
latex thesis
latex thesis
