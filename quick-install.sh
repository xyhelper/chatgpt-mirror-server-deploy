#!/bin/bash
set -e

## 克隆仓库到本地
echo "clone repository..."
git clone --depth=1 https://github.com/xyhelper/chatgpt-mirror-server-deploy.git chatgpt-mirror

## 进入目录
cd chatgpt-mirror


if which docker-compose >/dev/null 2>&1; then
    echo "docker-compose 存在"
    # 执行 docker-compose 相关操作
    docker-compose pull
    docker-compose up -d
elif which "docker compose" >/dev/null 2>&1; then
    echo "docker compose 存在"
    # 执行 docker compose 相关操作
    docker compose pull
    docker compose up -d
else
    echo "无法找到 docker-compose 或 docker compose"
    # 处理未找到的情况
fi


## 提示信息
echo "服务启动成功，请访问 http://localhost:8200"
echo "管理员后台地址 http://localhost:8200/xyhelper"
echo "管理员账号: admin"
echo "管理员密码: 123456"
echo "请及时修改管理员密码"