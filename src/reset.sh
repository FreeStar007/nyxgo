#!/bin/bash
if sudo rm -rf /usr/local/nyxgo_venv &> /dev/null; then
    echo "环境已重置，可重新运行start.sh"
else
    echo "环境重置失败，重试一下吧"
fi