#!/bin/bash

# 递归查找当前目录及所有子目录中的所有.mp3文件
find . -type f -name "*.mp3" | while read file; do
    # 获取文件名，不包括扩展名
    base_name=$(basename "$file" .mp3)
    # 使用eyeD3设置mp3文件的标题
    eyeD3 --title "$base_name" "$file"
done 