#!/usr/bin/env bash

printf '#undef LOG\n#define LOG 0\n' > static_log10.h

pow=10
log=1

while [[ $log -lt $1 ]]; do
	printf '#if X / %u\n\t#undef LOG\n\t#define LOG %u\n#endif\n' $pow $log >> static_log10.h
	pow=$((pow * 10))
	log=$((log + 1))
done
