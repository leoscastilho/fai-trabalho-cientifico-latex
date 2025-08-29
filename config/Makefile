# Makefile for LaTeX project
# Ensures all generated files are placed in the build directory
# This file is located in config/ but operates on the parent directory

# Variables
MAIN = main
OUT = artigo
BUILD_DIR = ../build
PDF_DIR = ../pdf
SRC_DIR = ../src
BIB_DIR = ../bib
ROOT_DIR = ..

# Default target
all: pdf

# Create directories if they don't exist
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(PDF_DIR):
	mkdir -p $(PDF_DIR)

# Build PDF using XeLaTeX
pdf: $(BUILD_DIR) $(PDF_DIR)
	cd $(ROOT_DIR) && latexmk -r config/.latexmkrc -xelatex -synctex=1 -interaction=nonstopmode -file-line-error -outdir=build $(MAIN).tex
	cp $(BUILD_DIR)/$(MAIN).pdf $(PDF_DIR)/$(OUT).pdf

# Build PDF using XeLaTeX (alternative method)
xelatex: $(BUILD_DIR) $(PDF_DIR)
	cd $(ROOT_DIR) && xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build $(MAIN).tex
	cd $(ROOT_DIR) && biber build/$(MAIN)
	cd $(ROOT_DIR) && xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build $(MAIN).tex
	cd $(ROOT_DIR) && xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build $(MAIN).tex
	cp $(BUILD_DIR)/$(MAIN).pdf $(PDF_DIR)/$(OUT).pdf

# Clean build directory
clean:
	rm -rf $(BUILD_DIR)/*
	rm -rf $(PDF_DIR)/*

# Clean and rebuild
rebuild: clean pdf

# Open PDF (macOS)
open: pdf
	open $(PDF_DIR)/$(MAIN).pdf

# Show pdf directory contents
show:
	ls -la $(PDF_DIR)/

# Help
help:
	@echo "Available targets:"
	@echo "  pdf      - Build PDF using latexmk (default)"
	@echo "  xelatex  - Build PDF using xelatex directly"
	@echo "  clean    - Remove all files from build and pdf directories"
	@echo "  rebuild  - Clean and rebuild"
	@echo "  open     - Open the generated PDF (macOS)"
	@echo "  show     - Show contents of pdf directory"
	@echo "  help     - Show this help message"

.PHONY: all pdf xelatex clean rebuild open show help
