#!/usr/bin/env bash

function Hello(){
	LNAME=$1
	echo  "$LNAME"
}

Hello $1
exit 0
