# LaTeX Mk configuration file
# Ensures all generated files are placed in the build directory
# This file is located in config/ but operates on the parent directory

# Use XeLaTeX as the default engine
$pdf_mode = 5;  # Use xelatex

# Set output directory for auxiliary files (relative to project root)
$out_dir = 'build';

# Use biber for bibliography processing
$biber = 'biber %O %S';
$bibtex_use = 2;

# Additional options for xelatex
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Clean up auxiliary files
# $clean_ext = 'synctex.gz synctex.gz(busy) run.xml tex.bak bbl bcf fdb_latexmk run tdo %R-blx.bib';

# Preview settings
$preview_continuous_mode = 1;
$pdf_previewer = 'open %O %S';  # macOS default PDF viewer

# Don't change directory (we want to work from project root)
$do_cd = 0;

# Custom success hook to copy PDF to pdf folder
$success_cmd = 'mkdir -p pdf && cp build/main.pdf pdf/artigo.pdf';
