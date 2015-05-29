### Macros

INPUT = Credits.md Intro.md Basics.md Faceup.md Muses.md Secret.md

OUTPUT = output

METADATA = Pairs.yaml

EXTRA = extra

RADICAL = $(FILE:.md=)

all:
	pandoc $(INPUT) $(METADATA) -o $(OUTPUT)/$@.doc

clean:
	rm $(OUTPUT)/*

