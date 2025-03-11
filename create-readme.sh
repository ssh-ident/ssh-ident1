#!/usr/bin/sh -eu

## Python 3
python3 -m pydoc './ssh-ident' >'./README'
[ ! -d '__pycache__' ] || rm -rf '__pycache__'

## Python 2.7
#python2 -m pydoc './ssh-ident' >'./README'
#[ ! -f './ssh-identc' ] || rm './ssh-identc'

## Process new README: trim trailing spaces, shorten file location
sed -i -e 's#[[:space:]]\+$##' -e "s#$(realpath ${PWD})/##" -e '/^CLASSES$/,$ d' './README'
