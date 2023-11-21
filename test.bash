#!/bin/bash
# SPDX-FileCopyrightText: 2023 Kazuki Noguch
# SPDX-License=Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

###I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}
<<COMENTOUT
if [ res -eq 1 ]; then
	exit $res
fi

out=$(seq 5 | ./multi)
[ "${out}" = 15 ] || ng ${LINENO}
if [ res -eq 1 ]; then
        exit $res
fi
COMENTOUT
[ "$res" = 0 ] && echo OK
exit $res
