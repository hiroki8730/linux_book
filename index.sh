#!/bin/bash

# echo "\$0 = $0"
# echo "\$1 = $1"
# echo "\$2 = $2"
# echo "\$3 = $3"
# echo "\$4 = $4"
# echo "\$# = $#"
# echo "\$@ = $@"
# echo "\$* = $*"

# export LANG=C
# .some_command "$@"

# 簡単なif文
# if [ "$1" = "bin" ]; then
#     echo "OK"
# elif [ "$2" = "bin" ]; then
#     echo "$2"
# else
#     echo "NG"
# fi
# ls /dammy
# echo "終了ステータス = $?"

# 簡単なfor文
# for name in aaa bbb ccc
# do
#     echo $name
# done

# 1から5までを表示
# seq 1 5

# 簡単なfor文2
# for i in $(seq 1 5)
# do
#     rm "000${i}.txt"
# done

# # 簡単なwhile文
# i=1
# while [ "$i" -le 10 ]
# do
#     echo "$i"
#     i=$((i + 2))
# done

print_parameters ()
{
    echo "\$1" = "$1"
    echo "\$2" = "$2"
    echo "\$3" = "$3"
    echo
    echo "$# arguments"
    echo "script name = $0"    
}

print_parameters aaa bbb ccc