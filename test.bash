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
[ "${out}" = 15 ] || ng ${LINENO} && exit $res

out=$(seq 5 | ./multi)
[ "${out}" = 120 ] || ng ${LINNO} && exit $res

[ "$res" = 0 ] && echo OK
exit $res
