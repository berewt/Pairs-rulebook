### Macros

INPUT = Copyright.md Intro.md Basics.md Faceup.md Muses.md Secret.md Bidding.md Credits.md

OUTPUT = output

METADATA = Pairs.yaml

CSS = Pairs.css

EXTRA = extra

RADICAL = $(FILE:.md=)

all: html

html:
	pandoc $(INPUT) $(METADATA) -c $(CSS) -s -o $(OUTPUT)/index.html
	cp $(CSS) $(OUTPUT)

wiki:
	pandoc $(INPUT) $(METADATA) -s -t dokuwiki -o $(OUTPUT)/index.wk

clean:
	rm $(OUTPUT)/*

