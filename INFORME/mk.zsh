#!/bin/zsh

# rifle $1
trap "{ latexmk -c ; }" 2
latexmk -pdf -pvc -halt-on-error
