#!/bin/bash
#Program made by liuwei

com_help(){
echo "./mCompile.sh 路径 版本"
}

update_Data(){
rm -rf `svn st --no-ignore`
svn up 
}

main_com(){

if [ "$1" == "" ];then
  com_help
else 
path=$1
 cd $path
 update_Data
 ./compile.sh n $2 userdebug V1.0.0
fi
}

main_com $1 $2
