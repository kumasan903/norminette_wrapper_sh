#!/bin/bash
norminette | grep -e "Error\!$" -e "OK\!$" | sed -e "s/Error\!/[FAILED]/g" | sed -e "s/OK\!/[  OK  ]/g" | awk '{print substr($0,length($0)-7,8) " " substr($0,1,length($0)-10)}' | sed "s/FAILED/\x1b[31mFAILED\x1b[0m/" | sed "s/OK/\x1b[32mOK\x1b[0m/"
