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
mapfile -t numbers_array <<<"$out"
for i in "${!numbers_array[@]}"; do
    case $i in
        0)
            echo "最初の要素に対する処理: ${numbers_array[$i]}"
            # 最初の要素に対する処理を記述
			[ "${numbers_array[$i]}" = 15 ] || ng ${LINENO}
            ;;
        1)
            echo "2番目の要素に対する処理: ${numbers_array[$i]}"
            # 2番目の要素に対する処理を記述
			[ "${numbers_array[$i]}" = 3.0 ] || ng ${LINENO}
            ;;
	2)
            echo "3番目の要素に対する処理: ${numbers_array[$i]}"
            # 2番目の要素に対する処理を記述
			[ "${numbers_array[$i]}" = 120 ] || ng ${LINENO}
            ;;	
        *)
            echo "その他の要素に対する処理: ${numbers_array[$i]}"
            # その他の要素に対するデフォルトの処理を記述
			ng ${LINENO}
            ;;
    esac
done

[ "$res" = 0 ] && echo OK
exit $res
