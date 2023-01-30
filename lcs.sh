#!/bin/bash

LCPATH=~/leetcode
cd $LCPATH

#create a directory given a problem name/number
PROBLEM_NUMBER=$1
rm -rf $LCPATH/$PROBLEM_NUMBER
mkdir $LCPATH/$PROBLEM_NUMBER

#insert template in the directory
cp $LCPATH/template/main.go $LCPATH/$PROBLEM_NUMBER/
cp $LCPATH/template/input.txt $LCPATH/$PROBLEM_NUMBER/
cd $PROBLEM_NUMBER

#create a mod file
go mod init $PROBLEM_NUMBER
