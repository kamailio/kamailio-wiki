# make commands to build html from markdown
#

# list with markdown files
MDS=$(shell find docs/* -name '*.md')

# pandoc variables
PDOUTDIR?=html/pandoc
PDHTMLS=$(patsubst %.md,$(PDOUTDIR)/%.html, $(MDS))

.PHONY : all
all :
	@echo "  available commands:"
	@echo "    make mkdocs"
	@echo "    make mkdocs-clean"
	@echo "    make pandoc"
	@echo "    make pandoc-clean"

.PHONY : pandoc
pandoc : $(PDHTMLS) $(PDOUTDIR)

.PHONY : pandoc-clean
pandoc-clean :
	rm -rf $(PDOUTDIR)

$(PDOUTDIR) :
	mkdir -p $(PDOUTDIR)

$(PDOUTDIR)/%.html : %.md $(PDOUTDIR)
	mkdir -p $$(dirname $@)
	pandoc --toc --lua-filter=fmt/pandoc/links.lua -t html -f markdown -s $< -o $@

.PHONY : mkdocs
mkdocs :
	mkdocs build -f fmt/mkdocs/mkdocs.yml

.PHONY : mkdocs-clean
mkdocs-clean :
	rm -rf html/mkdocs

.PHONY : clean
clean :
	rm -rf html