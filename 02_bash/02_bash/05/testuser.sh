#!/bin/bash

#输入用户  判断用户名和组名是否一致

if ! id $1 &>/dev/null;then
 echo "no such user"
 exit 10
fi

if [ `id -n -u $1` == `id -n -g $1` ]; then
  echo "same"
else
  echo "not same"
fi
