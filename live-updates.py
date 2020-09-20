#!/usr/bin/env python3

import sys

if len(sys.argv) < 3:
    print("usage: live-updates.py WATCH OUTPUT")
    sys.exit(1)

WATCH=sys.argv[1]
OUT=sys.argv[2]

from livereload import Server, shell
server = Server()
server.watch(WATCH, shell('make html', cwd='.'))
server.serve(root=OUT)
