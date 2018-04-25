#!/usr/bin/env bash

tex_location=~/Dropbox/Thesis/docs/thesis/tex/
merger_script=~/Dropbox/Thesis/docs/template/merge_pdfs.py

pushd ${tex_location}
    bibtex thesis
    pdflatex thesis
    python "${merger_script}" thesis.pdf hebrew_cover.pdf
popd