#!/bin/bash
# Build script for LaTeX project
# Usage: ./config/build.sh [clean|pdf|open|help]

set -e  # Exit on error

# Variables
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
BUILD_DIR="$PROJECT_ROOT/build"
MAIN_FILE="main.tex"

# Functions
build_pdf() {
    echo "Building PDF..."
    mkdir -p "$BUILD_DIR"
    cd "$PROJECT_ROOT"
    latexmk -r config/.latexmkrc -xelatex -synctex=1 -interaction=nonstopmode -file-line-error -outdir=build "$MAIN_FILE"
    echo "PDF built successfully in $BUILD_DIR/main.pdf"
}

clean_build() {
    echo "Cleaning build directory..."
    rm -rf "$BUILD_DIR"/*
    echo "Build directory cleaned."
}

open_pdf() {
    if [[ -f "$BUILD_DIR/main.pdf" ]]; then
        open "$BUILD_DIR/main.pdf"
    else
        echo "PDF not found. Run 'build pdf' first."
        exit 1
    fi
}

show_help() {
    echo "Usage: $0 [command]"
    echo ""
    echo "Commands:"
    echo "  pdf     - Build the PDF (default)"
    echo "  clean   - Clean build directory"
    echo "  open    - Open the generated PDF"
    echo "  help    - Show this help message"
}

# Main logic
case "${1:-pdf}" in
    pdf)
        build_pdf
        ;;
    clean)
        clean_build
        ;;
    open)
        open_pdf
        ;;
    help|--help|-h)
        show_help
        ;;
    *)
        echo "Unknown command: $1"
        show_help
        exit 1
        ;;
esac
