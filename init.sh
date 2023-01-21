#!/bin/sh

args=

if [ ! -z "${WSDD_ARGS}" ]; then
	args=${WSDD_ARGS}
else
	if [ ! -z "${HOSTNAME}" ]; then
		args="${args} ${HOSTNAME}"
	else
		echo "HOSTNAME environment variable must be set."
		exit 1
	fi

	if [ ! -z "${WORKGROUP}" ]; then
		args="${args} -w ${WORKGROUP}"
	fi

	if [ ! -z "${DOMAIN}" ]; then
		args="${args} -d ${DOMAIN}"
	fi
fi

echo "Launching \"python wsdd.py ${args}\""
exec python ./wsdd.py ${args}
