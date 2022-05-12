# make commands to build html from markdown
#

# list with markdown files
MDS=$(shell find docs/* -name '*.md')

# pandoc variables
PDOUTDIR?=html/pandoc
PDHTMLS=$(patsubst %.md,$(PDOUTDIR)/%.html, $(MDS))
CSS=/css/pandoc.css

.PHONY : all
all :
	@echo "  available commands:"
	@echo "    make mkdocs"
	@echo "    make mkdocs-clean"
	@echo "    make pandoc"
	@echo "    make pandoc-clean"

.PHONY : pandoc
pandoc : $(PDHTMLS) $(PDOUTDIR)
	cp -R fmt/pandoc/css $(PDOUTDIR)/docs/

.PHONY : pandoc-clean
pandoc-clean :
	rm -rf $(PDOUTDIR)

.PHONY : pandoc-http
pandoc-http:
	cd html/pandoc/docs && python -m SimpleHTTPServer

.PHONY : pandoc-http3
pandoc-http3:
	cd html/pandoc/docs && python3 -m http.server

$(PDOUTDIR) :
	mkdir -p $(PDOUTDIR)

$(PDOUTDIR)/%.html : %.md $(PDOUTDIR)
	mkdir -p $$(dirname $@)
	pandoc --toc --css $(CSS) --lua-filter=fmt/pandoc/links.lua -t html -f markdown -s $< -o $@

.PHONY : mkdocs
mkdocs :
	mkdocs build -f fmt/mkdocs/mkdocs.yml

.PHONY : mkdocs-clean
mkdocs-clean :
	rm -rf html/mkdocs

.PHONY : mdbook
mdbook:
	rm -f docs/SUMMARY.md && cd docs && ln -s ../fmt/mdbook/SUMMARY.md && cd ..
	mdbook build -d ../../html/mdbook fmt/mdbook
	rm -f docs/SUMMARY.md

.PHONY : mdbook-serve
mdbook-serve:
	rm -f docs/SUMMARY.md && cd docs && ln -s ../fmt/mdbook/SUMMARY.md && cd ..
	mdbook serve --open -d ../../html/mdbook fmt/mdbook
	rm -f docs/SUMMARY.md

.PHONY : mdbook-clean
mdbook-clean :
	rm -rf html/mdbook
	rm -f docs/SUMMARY.md

.PHONY : clean
clean :
	rm -f docs/SUMMARY.md
	rm -rf html

