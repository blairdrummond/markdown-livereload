---
title: An Example of the markdown live updater
subtitle: Edit markdown in any tool!
author: Blair Drummond
abstract: A makefile with pandoc and a little webserver
output:
  html_document:
    toc: true
    toc_depth: 2
---

-----

# How does it work?

It uses `GNU Make`, `pandoc`, and `livereload (python)` to implement the following:

1. Watch a document for changes
2. Upon every change, call `make html` (which is a custom pandoc command)
3. Have a webserver on localhost update to the new html file.

**It is dead-simple, and you can use any editor you want.**

# Nice Pandoc Markdown

You get nicely formatted markdown, with footnotes and stuff[^1].

[^1]: An old Dijkstra quote comes to mind here: "Simplicity is a great virtue but it requires hard work to achieve it and education to appreciate it. And to make matters worse: complexity sells better." 

Images and everything work too, of course

![The Experience Economy](./experience-economy.gif)

[The Experience Economy](https://hbr.org/1998/07/welcome-to-the-experience-economy)

**By default, I use `--self-contained`, so the images and css are within the html.**

### Even math works! 

$$ \sum_i \varphi_i $$
