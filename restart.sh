#!/usr/bin/env bash

container_names=("3070" "3080" "p5000" "cpu")

if [ $# -eq 0 ]
then
    echo 请选择要重启的服务，输入对应的编号（1-4）或者5全部重启所有容器（all）

    select container in "${container_names[@]}" all
    do
        if [ "$container" == 'all' ]
        then
            echo 重启所有容器
            sudo docker stop "${container_names[@]}"
            sudo docker start "${container_names[@]}"
            echo 完成
            exit 0
        elif [ -z "$container" ]
        then
            echo 无效的容器编号，请重新选择
            exit 1
        else
            echo 正在重启容器："$container"
            sudo docker stop "$container"
            sudo docker start "$container"
            echo 完成
            exit 0
        fi
    done
fi