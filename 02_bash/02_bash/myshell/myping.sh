#!/bin/bash

#编写脚本测试192.168.4.0/24 整个网段哪些主机处于开机状态
#多进程 定义一个函数 ping某个主机 检查是否存活
myping(){
ping -c 2 -i 0.3 -W 1 $1 &>/dev/null
if [ $? -eq 0 ];then
  echo"$1 is up"
else
  echo "$1 is down"
fi

}

for i in {1..254}
do
  myping 192.168.4.$i &
done
