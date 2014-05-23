#!/bin/bash


if [ -z "${POOL_URL}" ]; then
	echo "POOL_URL is required, but not set, exiting.."
	exit 1
fi

if [ -z "${WORKER_LOGIN}" ]; then
	echo "WORKER_LOGIN is required, but not set, exiting.."
	exit 1
fi

if [ -z "${WORKER_PASSWORD}" ]; then
	echo "WORKER_PASSWORD is required, but not set, exiting.."
	exit 1
fi

if grep -q aes /proc/cpuinfo; then
	echo "AES CPU capability detected - Horay!" >&2
	MINER=minerd.aes
else
	echo "No AES capabilities detected, using non-AES optimized minerd" >&2
	MINER=minerd
fi

$MINER -a X11 -o ${POOL_URL} -u ${WORKER_LOGIN} -p ${WORKER_PASSWORD}


# EOF
