### Macros

INPUT = Credits.md Intro.md Basics.md Faceup.md Muses.md Secret.md Bidding.md

OUTPUT = output

METADATA = Pairs.yaml

EXTRA = extra

RADICAL = $(FILE:.md=)

all: html

html:
	pandoc $(INPUT) $(METADATA) --standalone -o $(OUTPUT)/Pairs.html

clean:
	rm $(OUTPUT)/*

