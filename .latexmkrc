# generate a pdf file using xelatex
# 0 : no pdf version
# 1 : pdf via $pdflatex
# 2 : pdf via $ps2pdf
# 3 : pdf via $dvipdf
# 4 : pdf via $lualatex
# 5 : pdf and xdv via $xelatex and $xdvipdfmx
$pdf_mode = 5;

# specify the full command used for compilation with xelatx
# the defaut is 'xelatex %O %S'
# %O is a placeholder for additional options passed to latexmk
# %S is the name of the source file(s?)
# shell-escape needs to be enabled so that the package "svg" can execute inkscape
$xelatex = 'xelatex %O -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error %S';

@default_files = ('sicp.tex');
