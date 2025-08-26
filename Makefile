# Makefile for LaTeX project
# Ensures all generated files are placed in the build directory

# Variables
MAIN = main
BUILD_DIR = build
SRC_DIR = src
BIB_DIR = bib

# Default target
all: pdf

# Create build directory if it doesn't exist
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Build PDF using XeLaTeX
pdf: $(BUILD_DIR)
	latexmk -xelatex -synctex=1 -interaction=nonstopmode -file-line-error -outdir=$(BUILD_DIR) $(MAIN).tex

# Build PDF using XeLaTeX (alternative method)
xelatex: $(BUILD_DIR)
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=$(BUILD_DIR) $(MAIN).tex
	biber $(BUILD_DIR)/$(MAIN)
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=$(BUILD_DIR) $(MAIN).tex
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=$(BUILD_DIR) $(MAIN).tex

# Clean build directory
clean:
	rm -rf $(BUILD_DIR)/*

# Clean and rebuild
rebuild: clean pdf

# Open PDF (macOS)
open: pdf
	open $(BUILD_DIR)/$(MAIN).pdf

# Show build directory contents
show:
	ls -la $(BUILD_DIR)/

# Help
help:
	@echo "Available targets:"
	@echo "  pdf      - Build PDF using latexmk (default)"
	@echo "  xelatex  - Build PDF using xelatex directly"
	@echo "  clean    - Remove all files from build directory"
	@echo "  rebuild  - Clean and rebuild"
	@echo "  open     - Open the generated PDF (macOS)"
	@echo "  show     - Show contents of build directory"
	@echo "  help     - Show this help message"

.PHONY: all pdf xelatex clean rebuild open show help
