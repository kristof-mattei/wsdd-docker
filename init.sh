#!/bin/sh

if [ -z "${HOSTNAME}" ]; then
	echo "HOSTNAME environment variable must be set."
	exit 1
fi

args="-n ${HOSTNAME}"

if  [ ! -z "${WORKGROUP}" ]; then
	args="${args} -w ${WORKGROUP}"
fi

if  [ ! -z "${DOMAIN}" ]; then
	args="${args} -d ${DOMAIN}"
fi

if [ ! -z "${EXTRA_WSDD_ARGS}" ]; then
	args="${args} ${DOMAIN}"
fi

echo "Launching 'python wsdd.py ${args}"
exec python ./wsdd.py ${args}