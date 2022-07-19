#!/bin/bash

if [[ ${USERNAME} == "" ]]; then
	echo "Missing USERNAME env variable"
	exit 1
fi

if [[ ${PASSWORD} == "" ]]; then
	echo "Missing PASSWORD env variable"
	exit 1
fi

if [[ ${LEAGUEID} == "" ]]; then
	python main.py ${USERNAME} ${PASSWORD}
	exit 0
fi

python main.py ${USERNAME} ${PASSWORD} --ID \"${LEAGUEID}\"