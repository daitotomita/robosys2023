#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Daito Tomita
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./asmd)
[ "${out}" = "15 : -15 : 120 : 0.0083333333" ] || ng ${LINENO}

out=$(seq 10 | ./asmd)
[ "${out}" = "55 : -55 : 3628800 : 2.756e-07" ] || ng ${LINENO}

out=$(seq 1.0 | ./asmd)
[ "${out}" = "1 : -1 : 1 : 1.0" ] || ng ${LINENO}

out=$(seq 1.1 | ./asmd)
[ "${out}" = "1 : -1 : 1 : 1.0" ] || ng ${LINENO}

out=$(seq 1.9 | ./asmd)
[ "${out}" = "1 : -1 : 1 : 1.0" ] || ng ${LINENO}

out=$(seq 2.0 | ./asmd)
[ "${out}" = "3 : -3 : 2 : 0.5" ] || ng ${LINENO}

out=$(seq 5 10 | ./asmd)
[ "${out}" = "45 : -45 : 151200 : 6.6138e-06" ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo a 10 | ./asmd)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo A 10 | ./asmd)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo あ 10 | ./asmd)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo あ | ./asmd)

[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./asmd)

[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo ! | ./asmd)

[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo $ | ./asmd)

[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo % | ./asmd)

[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo ? | ./asmd)

[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
