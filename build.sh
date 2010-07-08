#!/bin/bash

./lgrind -e clojure.tex > clojure-lgrind.tex
latex thesis
bibtex thesis
latex thesis
latex thesis
