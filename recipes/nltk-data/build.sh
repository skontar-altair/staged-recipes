#!/bin/bash

NTLK_DATA=$PREFIX/nltk_data
mkdir -vp $NTLK_DATA

# Download from the source of the package, its on the $SRC_DIR

mv $SRC_DIR/packages/* $NTLK_DATA
find $NLTK_DATA/ -name "*.zip" -execdir unzip -qq -o '{}' ';' -delete
find $NLTK_DATA/ -name "*.gz" -exec gunzip '{}' ';'
