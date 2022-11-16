#!/bin/bash

##取出所有用户 输出hello 用户名
LINES=`wc -l /etc/passwd | cut -d' ' -f1`
for I in `seq 1 $LINES`;do 
echo "hello `head -n $I /etc/passwd | tail -1| cut -d: -f1`" 
done
