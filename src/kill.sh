#!/bin/bash
if (screen -ls | grep "nyxbot" | awk '{print $1}' | xargs -I {} screen -S {} -X kill) &> /dev/null; then
    echo "OneBot已关闭"
else
    echo "OneBot关闭失败，有可能没开"
fi
if (screen -ls | grep "onebot" | awk '{print $1}' | xargs -I {} screen -S {} -X kill) &> /dev/null; then
    echo "NyxBot已关闭"
else
    echo "NyxBot关闭失败，有可能没开"
fi
echo "若screen只有以上两个服务进程，则可通过“pkill screen”命令来一键停止以上两个服务"