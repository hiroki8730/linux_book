#!/bin/bash

list_recursive ()
{
    local filepath=$1
    local indent=$2

    # 区切り文字を変更
    _IFS=$IFS
    IFS=$'\n'

    # インデント付きでパス部分を取り除いてファイル名を表示する
    echo "${indent}${filepath##*/}"

    #ディレクトリの場合の処理
    if [ -d "$filepath" ]; then
        local fname
        for fname in $(ls "$filepath")
        do
            # ディレクトリならば、再度list_recursiveを呼び出す
            # list_recursive "${filepath}/${fname}"

            # インデントにスペースを追加して再起呼び出し
            list_recursive "${filepath}/${fname}" "    $indent"
        done
    fi
}
list_recursive "$1" ""


# IFSを元に戻す
IFS=$_IFS