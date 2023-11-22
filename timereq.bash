#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Daito Tomita
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo NG at Line $1
        res=1
}

res=0

### I/O TEST ###

out=$(./timereq 70)
[ "${out}" = "70 km/h
東京ー大阪 7 時間 8 分
大阪ー京都 0 時間 48 分
京都ー富山 4 時間 34 分" ] || ng ${LINENO}

out=$(./timereq 75)
[ "${out}" = "75 km/h
東京ー大阪 6 時間 40 分
大阪ー京都 0 時間 44 分
京都ー富山 4 時間 15 分" ] || ng ${LINENO}

out=$(./timereq 75.5)
[ "${out}" = "75.5 km/h
東京ー大阪 6 時間 37 分
大阪ー京都 0 時間 44 分
京都ー富山 4 時間 14 分" ] || ng ${LINENO}

out=$(./timereq 30 50)
[ "${out}" = "30 km/h
東京ー大阪 16 時間 40 分
大阪ー京都 1 時間 52 分
京都ー富山 10 時間 39 分
50 km/h
東京ー大阪 10 時間 0 分
大阪ー京都 1 時間 7 分
京都ー富山 6 時間 24 分" ] || ng ${LINENO}

out=$(./timereq 30 50 70)
[ "${out}" = "30 km/h
東京ー大阪 16 時間 40 分
大阪ー京都 1 時間 52 分
京都ー富山 10 時間 39 分
50 km/h
東京ー大阪 10 時間 0 分
大阪ー京都 1 時間 7 分
京都ー富山 6 時間 24 分
70 km/h
東京ー大阪 7 時間 8 分
大阪ー京都 0 時間 48 分
京都ー富山 4 時間 34 分" ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(./timereq あ)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(./timereq ! )
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(./timereq $)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(./timereq %)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(./timereq ?)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
