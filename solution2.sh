#!/bin/bash

# assuming there are .txt files in  ~/start/

mkdir -p $HOME/endpoint/
cp $HOME/start/*.txt $HOME/endpoint/
ls -l $HOME/endpoint/*.txt 
