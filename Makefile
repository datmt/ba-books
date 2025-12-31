# Makefile for The Junior BA's Practical Guide
# Builds the book in various formats using Asciidoctor

# Directories
BOOK_DIR = book
OUTPUT_DIR = output
IMAGES_DIR = $(BOOK_DIR)/images

# Main file
MAIN_FILE = $(BOOK_DIR)/main.adoc

# Output files
HTML_FILE = $(OUTPUT_DIR)/junior-ba-guide.html
PDF_FILE = $(OUTPUT_DIR)/junior-ba-guide.pdf
EPUB_FILE = $(OUTPUT_DIR)/junior-ba-guide.epub

# Asciidoctor options
ASCIIDOCTOR = asciidoctor
ASCIIDOCTOR_PDF = asciidoctor-pdf
ASCIIDOCTOR_EPUB = asciidoctor-epub3
DIAGRAM_OPTS = -r asciidoctor-diagram

# Common attributes
ATTRS = -a imagesdir=$(IMAGES_DIR) \
        -a toc=left \
        -a toclevels=3 \
        -a icons=font \
        -a source-highlighter=rouge \
        -a sectnums

.PHONY: all html pdf epub clean check-deps help

# Default target
all: html pdf

# Build HTML version
html: check-deps $(OUTPUT_DIR)
	@echo "Building HTML version..."
	$(ASCIIDOCTOR) $(DIAGRAM_OPTS) $(ATTRS) \
		$(MAIN_FILE) \
		-o $(HTML_FILE)
	@echo "HTML book created: $(HTML_FILE)"

# Build PDF version
pdf: check-deps $(OUTPUT_DIR)
	@echo "Building PDF version..."
	$(ASCIIDOCTOR_PDF) $(DIAGRAM_OPTS) $(ATTRS) \
		-a pdf-themesdir=themes \
		-a pdf-theme=custom \
		$(MAIN_FILE) \
		-o $(PDF_FILE)
	@echo "PDF book created: $(PDF_FILE)"

# Build EPUB version
epub: check-deps $(OUTPUT_DIR)
	@echo "Building EPUB version..."
	$(ASCIIDOCTOR_EPUB) $(DIAGRAM_OPTS) \
		$(MAIN_FILE) \
		-o $(EPUB_FILE)
	@echo "EPUB book created: $(EPUB_FILE)"

# Create output directory
$(OUTPUT_DIR):
	@mkdir -p $(OUTPUT_DIR)

# Check for required dependencies
check-deps:
	@echo "Checking dependencies..."
	@command -v $(ASCIIDOCTOR) >/dev/null 2>&1 || \
		{ echo "Error: asciidoctor not found. Install with: gem install asciidoctor"; exit 1; }
	@command -v $(ASCIIDOCTOR_PDF) >/dev/null 2>&1 || \
		{ echo "Warning: asciidoctor-pdf not found. Install with: gem install asciidoctor-pdf"; }
	@command -v $(ASCIIDOCTOR_EPUB) >/dev/null 2>&1 || \
		{ echo "Warning: asciidoctor-epub3 not found. Install with: gem install asciidoctor-epub3"; }
	@echo "Dependencies OK"

# Clean generated files
clean:
	@echo "Cleaning output directory..."
	@rm -rf $(OUTPUT_DIR)
	@rm -f $(BOOK_DIR)/**/.asciidoctor
	@find $(BOOK_DIR) -name "*.png" -path "*/diag-*" -delete
	@echo "Clean complete"

# Watch for changes and rebuild HTML (requires entr)
watch:
	@echo "Watching for changes... (Ctrl+C to stop)"
	@find $(BOOK_DIR) -name "*.adoc" | entr make html

# Quick build - HTML only, no diagram processing
quick:
	@echo "Quick build (HTML, no diagrams)..."
	$(ASCIIDOCTOR) $(ATTRS) $(MAIN_FILE) -o $(HTML_FILE)
	@echo "Quick HTML build complete: $(HTML_FILE)"

# Validate AsciiDoc syntax
validate:
	@echo "Validating AsciiDoc files..."
	@find $(BOOK_DIR) -name "*.adoc" -exec $(ASCIIDOCTOR) --safe -o /dev/null {} \;
	@echo "Validation complete"

# Display help
help:
	@echo "Available targets:"
	@echo "  make all       - Build HTML and PDF versions (default)"
	@echo "  make html      - Build HTML version only"
	@echo "  make pdf       - Build PDF version only"
	@echo "  make epub      - Build EPUB version only"
	@echo "  make quick     - Quick HTML build without diagram processing"
	@echo "  make watch     - Watch for changes and rebuild HTML (requires entr)"
	@echo "  make validate  - Validate AsciiDoc syntax"
	@echo "  make clean     - Remove generated files"
	@echo "  make help      - Show this help message"
	@echo ""
	@echo "Installation requirements:"
	@echo "  gem install asciidoctor asciidoctor-diagram asciidoctor-pdf asciidoctor-epub3"
