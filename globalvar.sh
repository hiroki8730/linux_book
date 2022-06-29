#!/bin/bash

func1 ()
{
    echo "func1: message = $message"
    # 関数内で変数の値を変更
    # message="Guten tag"

    # messageをローカル変数にする
    local message="Guten tag"
}

message="Hello"
echo "main(1st): message = $message"
func1
echo "main(2nd): message = $message"