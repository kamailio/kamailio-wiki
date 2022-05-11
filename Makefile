OUTDIR?=html
MDS=$(shell find docs/* -name '*.md')
HTMLS=$(patsubst %.md,$(OUTDIR)/%.html, $(MDS))

.PHONY : all

all : $(HTMLS) $(OUTDIR)

clean :
	rm -rf $(OUTDIR)

$(OUTDIR) :
	mkdir -p $(OUTDIR)

$(OUTDIR)/%.html : %.md $(OUTDIR)
	mkdir -p $$(dirname $@)
	pandoc --toc --lua-filter=fmt/pandoc/links.lua -t html -f markdown -s $< -o $@
