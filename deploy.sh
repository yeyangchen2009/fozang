#!/bin/bash

# 部署脚本：将佛藏项目推送到GitHub

# 设置变量
REPO_NAME="fozang"
GITHUB_USERNAME="yeyangchen2009"  # 请替换为您的GitHub用户名

echo "开始部署佛藏项目到GitHub..."

# 初始化git仓库（如果尚未初始化）
if [ ! -d ".git" ]; then
    echo "初始化git仓库..."
    git init
fi

# 添加所有文件
echo "添加所有文件到git..."
git add .

# 提交更改
echo "提交更改..."
git commit -m "Initial commit: 佛藏项目"

# 添加远程仓库
echo "添加远程仓库..."
git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git

# 推送到GitHub
echo "推送到GitHub..."
git push -u origin main

echo "部署完成！"