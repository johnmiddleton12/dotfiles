#!/bin/bash

function CNU() {
	cd /mnt/c/Users/jpmaw/OneDrive\ -\ Christopher\ Newport\ University/4th\ Semester/Computer\ Science/
}

function MCC() {
    cd /mnt/c/Users/jpmaw/OneDrive\ -\ Christopher\ Newport\ University/JAVAPlugins
}
	
function iCloud() {
    cd /mnt/c/Users/jpmaw/iCloudDrive/iCloud~dk~simonbs~Scriptable/
}

function JAnt() {
	mkdir bin
	cp ~/.build.xml build.xml
	cp ~/.buildComp.xml buildComp.xml
	projName=${PWD##*/}
	sed -i "s/TOBEREPLACED/$projName/g" build.xml
	sed -i "s/TOBEREPLACED/$projName/g" buildComp.xml
	ant -f buildComp.xml
}

function JTest() {
	fileName=$1
	editedFileName="${fileName:0:${#fileName}-5}Test"
	( cd .. && ant -DD "${editedFileName}" )
}

function JR() {
	fileName=$1
	editedFileName="${fileName:0:${#fileName}-5}"
	( cd .. && cd bin && java ${editedFileName} )
}

function JC() {
	currentFile="$(pwd)/$1"
	( cd .. && cd bin && javac -d "$(pwd)" "${currentFile}" )
}

function JB() {
	( cd .. && ant -f buildComp.xml )
}

function JCR() {
	currentFile="$(pwd)/$1"
	fileName=$1
	editedFileName="${fileName:0:${#fileName}-5}"
	( cd .. && cd bin && javac -d "$(pwd)" "${currentFile}" && java ${editedFileName} )
}

