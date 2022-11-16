#!/bin/bash
#awk 定义变量两种方式

awk 'BEGIN {var="var test";print var}'
#var test

 awk -v var="var test2" 'BEGIN{print var}'
#var test2

