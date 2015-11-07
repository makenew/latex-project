# Build Environment
LATEX_INPUT = makenew-latex-project
LATEX_OUTPUT = "Make-New-LaTeX-Project"
LATEX_OUTPUT_EXT = pdf
LATEX_SRC = tex
LATEX_BULD = build

all: tex

check:
	@cd $(LATEX_SRC); chktex $(LATEX_INPUT).tex

clean:
	@echo Removing $(LATEX_BULD)/
	@rm -rf $(LATEX_BULD)
	@echo Cleaning $(LATEX_SRC)/
	@cd tex; latexmk -c; rm $(LATEX_INPUT).$(LATEX_OUTPUT_EXT)

tex:
	@mkdir -p $(LATEX_BULD)
	@echo Building $(LATEX_SRC)/$(LATEX_INPUT).tex \
		to $(LATEX_BULD)/$(LATEX_OUTPUT).$(LATEX_OUTPUT_EXT).
	@cd tex; latexmk -xelatex; \
		cp -p $(LATEX_INPUT).$(LATEX_OUTPUT_EXT) \
		../$(LATEX_BULD)/$(LATEX_OUTPUT).$(LATEX_OUTPUT_EXT)

.PHONY: build tex
