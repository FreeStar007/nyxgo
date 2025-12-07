#!/bin/bash
screen -ls | grep "nyxbot" | awk '{print $1}' | xargs -I {} screen -S {} -X kill &> /dev/null
echo "OneBot已关闭"
screen -ls | grep "onebot" | awk '{print $1}' | xargs -I {} screen -S {} -X kill &> /dev/null
echo "NyxBot已关闭"
