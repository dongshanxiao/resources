#!/bin/bash
main_d(){
local res_file
local list_file
if [ "$1" == "" ];then
  help
else 
  cd $1
  list_file=`find out -iname *res.apk`
  for res_file in ${list_file}
    do
      if [ "`echo ${res_file} | grep -E \"\-res\"`" != "" ];then
	apktool if ${res_file}
      fi
  done
fi 
}
help(){
echo "请输入参数路径: apktool.sh 路径"
}

main_d $1 $2
