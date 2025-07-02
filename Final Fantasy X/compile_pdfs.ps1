$rootFiles = @(
    "FFX_Any_.tex",
    "FFX_Any_Blitz_Loss.tex",
    "FFX_Any_Blitz_Win.tex",
    "FFX_Any_ - Single Column.tex",
    "FFX_Any_ - Single Column - Blitz Loss.tex",
    "FFX_Any_ - Single Column - Blitz Win.tex"
)

foreach ($file in $rootFiles) {
    pdflatex $file
}

Remove-Item -Path "*.aux", "*.log", "*.out", "*.toc", "*.nav", "*.snm" -Force -ErrorAction SilentlyContinue

