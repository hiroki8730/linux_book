#!/bin/bash

# 今日の日付けでファイルを作成
# vim $(date '+%Y-%m-%d').txt

# 日記データの保存ディレクトリ
directory="${HOME}/diary"

# データ保存ディレクトリがなければ作成する
if [ ! -d "$directory" ]; then
    mkdir "$directory"
fi

# データ保存ディレクトリ内にファイルを作成し保存する
vim "${directory}/$(date '+%Y-%m-%d').txt"