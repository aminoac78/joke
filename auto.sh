#!/bin/bash

# 定义安装程序的命令
COMMAND="openclaw onboard --install-daemon"

# 定义按键序列
# \e[D=左, \e[A=上, \e[C=右, \r=回车
(
  sleep 1          # 等待程序启动
  printf "\e[D"    # 左
  sleep 0.2; printf "\r" # 回车
  sleep 0.2; printf "\r" # 回车
  sleep 0.2; printf "\r" # 回车
  sleep 0.5; printf "\e[A" # 上
  sleep 0.2; printf "\r" # 回车
  sleep 0.2; printf "\r" # 回车
  sleep 0.2; printf "\r" # 回车
  sleep 0.5; printf "\e[A" # 上
  sleep 0.2; printf "\r" # 回车
  sleep 0.2; printf "\e[C" # 右
  sleep 0.2; printf "\r" # 回车
) | $COMMAND
