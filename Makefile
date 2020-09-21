##
# Markdown Document builder
#
# @file
# @version 0.1

DOC = src/doc.md
OUT = output/doc.html
SHELL := /bin/bash

html:
	mkdir -p output
	pandoc -s \
		--toc \
		--css pandoc.css \
        --data-dir ./src \
        --template reader.html \
		--resource-path src \
		--self-contained \
		-o $(OUT) \
		$(DOC)

dev:
	python3 live-updates.py $(DOC) $(OUT)

# end
