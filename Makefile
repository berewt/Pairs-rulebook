### Macros

OUTPUT = output

EXTRA = extra

RADICAL = $(FILE:.md=)

### Targets

all: pdf
	
pdf: $(RADICAL)-raw.pdf


clean:
	rm $(OUTPUT)/*


# Rules

%-slidy.html: %.md
	pandoc $^ $(SLIDY_BIB_TITLE) --bibliography=$(BIBLIO) -s -t slidy -o $(OUTPUT)/$@
