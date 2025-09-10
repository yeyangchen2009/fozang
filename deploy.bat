@echo off
REM 部署脚本：将佛藏项目推送到GitHub

REM 设置变量
set REPO_NAME=fozang
set GITHUB_USERNAME=yeyangchen2009

echo 开始部署佛藏项目到GitHub...

REM 初始化git仓库（如果尚未初始化）
if not exist ".git" (
    echo 初始化git仓库...
    git init
)

REM 添加所有文件
echo 添加所有文件到git...
git add .

REM 提交更改
echo 提交更改...
git commit -m "Initial commit: 佛藏项目"

REM 添加远程仓库
echo 添加远程仓库...
git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git

REM 推送到GitHub
echo 推送到GitHub...
git push -u origin main

echo 部署完成！
pause