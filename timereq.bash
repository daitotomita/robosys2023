#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Daito Tomita
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo NG at Line $1
        res=1
}

res=0

out=$(./timereq 70)
[ "${out}" = "70 km/h
東京ー大阪 7 時間 8 分
大阪ー京都 0 時間 48 分
京都ー富山 4 時間 34 分" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
