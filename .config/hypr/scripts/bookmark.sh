#!/usr/bin/env bash

wtype $(grep -v '^#' ~/.local/share/snippets | dmenu -c -i -l 20 | cut -d' ' -f1)
