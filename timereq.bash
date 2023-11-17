#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Daito Tomita
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo NG at Line $1
        res=1
}

res=0

out=$()
[ "${out}" = "15 : -15 : 120 : 0.0083333333" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
