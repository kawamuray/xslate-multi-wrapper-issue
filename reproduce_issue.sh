#!/bin/sh
set -e
set -x

rm -rf ./cache/*

./xslate.pl > expected.txt
sleep 2
touch ./tmpl/content[AB].tt

./xslate.pl > got.txt

diff -ud expected.txt got.txt
