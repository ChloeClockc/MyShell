#!/bin/sh


awk -F: '{printf "%-15s %i\n",$1,$3}' /etc/passwd

##root            0
##bin             1
##daemon          2
##adm             3
##lp              4
##sync            5
##shutdown        6
##halt            7

