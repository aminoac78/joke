#!/bin/bash

# 定义你的安装命令
CMD="openclaw onboard --install-daemon"

# 慢速模拟序列：左 -> 回车*3 -> 上 -> 回车*3 -> 上 -> 回车 -> 右 -> 回车
(
  sleep 3          # 初始等待，确保程序界面完全加载
  
  printf "\e[D"; sleep 2    # 左 (等待2秒)
  
  printf "\r";   sleep 2    # 回车 (1/3)
  printf "\r";   sleep 2    # 回车 (2/3)
  printf "\r";   sleep 2    # 回车 (3/3)
  
  printf "\e[A"; sleep 2    # 上
  
  printf "\r";   sleep 2    # 回车 (1/3)
  printf "\r";   sleep 2    # 回车 (2/3)
  printf "\r";   sleep 2    # 回车 (3/3)
  
  printf "\e[A"; sleep 2    # 上
  
  printf "\r";   sleep 2    # 回车
  
  printf "\e[C"; sleep 2    # 右
  
  printf "\r"               # 最后的确认回车
) | $CMD
