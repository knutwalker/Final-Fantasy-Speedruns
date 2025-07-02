#!/usr/bin/env bash

root_files=(
    "FFX_Any_.tex"
    "FFX_Any_Blitz_Loss.tex"
    "FFX_Any_Blitz_Win.tex"
    "FFX_Any_ - Single Column.tex"
    "FFX_Any_ - Single Column - Blitz Loss.tex"
    "FFX_Any_ - Single Column - Blitz Win.tex"
)

for file in "${root_files[@]}"; do
    pdflatex "$file"
done

rm -f *.aux *.log *.out *.toc *.nav *.snm
