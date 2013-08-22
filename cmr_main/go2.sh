#!/bin/bash
# Requires Perl
pdflatex bookMain
makeglossaries bookMain
pdflatex bookMain