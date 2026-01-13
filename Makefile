all: static/favicon.svg
clean:
	rm static/favicon.svg
static/favicon.svg: src/favicon.typ
	typst compile $< $@
