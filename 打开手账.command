#!/bin/bash
# 双击运行：在本文件夹启动本地服务器，并用浏览器打开手帐
cd "$(dirname "$0")"
PORT=8765
if ! curl -s -o /dev/null "http://localhost:$PORT/index.html"; then
  python3 -m http.server $PORT >/dev/null 2>&1 &
  sleep 1
fi
open "http://localhost:$PORT/"
echo "手帐已在浏览器打开。关闭这个窗口会停止服务器。"
wait
