#!/bin/bash

while :
do
	ping -c 5 db && ping -c 5 web
done
