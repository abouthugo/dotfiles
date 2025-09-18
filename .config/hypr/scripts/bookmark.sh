#!/usr/bin/env bash

wtype $(grep -v '^#' ~/.local/share/snippets | dmenu -c -l 50 | cut -d' ' -f1)
