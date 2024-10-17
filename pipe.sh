#!/usr/bin/sh

echo "Cleaning..."

rm *.aux *.bbl *.log *.blg *.toc src/*.aux


echo "Starting...."

pdflatex -interaction=nonstopmode psychology_report.tex
bibtex psychology_report
pdflatex -interaction=nonstopmode psychology_report.tex
pdflatex -interaction=nonstopmode psychology_report.tex

printf "\n\nDone\n"
