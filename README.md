# ChatGPT-Mirror-Server-Deploy

ChatGPT镜像服务快速部署脚本库

源码在 [https://github.com/xyhelper/chatgpt-mirror-server](https://github.com/xyhelper/chatgpt-mirror-server)

## 前置条件

- 一台至少2核2G内存的服务器,推荐使用香港、新加坡、日本地区的服务器,可以兼顾国内访问。
- 安装了docker和docker-compose
- 安装了git

## 部署步骤

1. 克隆本仓库到服务器上

```bash
git clone --depth=1 https://github.com/xyhelper/chatgpt-mirror-server-deploy.git chatgpt-mirror
```

2. 进入目录

```bash
cd chatgpt-mirror
```

3. 启动服务

```bash
./deploy.sh
```

## 使用方法

访问服务器的8200端口即可使用

管理后台地址为 http://服务器ip:8200/xyhelper/

默认用户名密码为 admin/123456
