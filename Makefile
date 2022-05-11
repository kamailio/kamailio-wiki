TXTDIR=html
MDS=$(shell find * -name '*.md')
HTMLS=$(patsubst %.md,$(TXTDIR)/%.html, $(MDS))

.PHONY : all

all : $(HTMLS) $(TXTDIR)
clean :
	rm -rf $(TXTDIR)

$(TXTDIR) :
	mkdir -p $(TXTDIR)

$(TXTDIR)/%.html : %.md $(TXTDIR)
	mkdir -p $$(dirname $@)
	pandoc --toc --lua-filter=links.lua -t html -f markdown -s $< -o $@
