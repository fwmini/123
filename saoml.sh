# SaoML 8.0 Shell脚本

# By 凌一

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export PATH

#######

Main()

{

Loading

}

Loading()

{

rm -rf $0 >/dev/null 2>&1

clear 

echo

echo "正在检查安装环境(预计三分钟内完成)...."

#安装环境 避免因缺失环境出现错误

yum -y install wget curl openssl net-tools net-tools.x86_64 >/dev/null 2>&1

Home_page

}

Home_page()

{

clear

echo

echo -e "\033[1;35m本脚本系统仅供学习使用，切勿用于商业用途\033[0m "

echo -e "\033[1;36m安装后请于24小时内自行删除\033[0m "

echo -e "\033[1;34m再次声明：本产品仅可用于国内网络环境的虚拟加密访问，用于数据保密。严禁用于任何违法违规用途。\033[0m "

echo -e "\033[1;33m严禁在非中国大陆地区机器上测试使用，发生一切后果需你自行承担，与本人无关，搭建即视为同意本声明。\033[0m "

echo 

echo -e "\033[1;36m回车开始搭建SaoML8.0系统！\033[0m "

read

sleep 1

echo -e "\033[1;32m正在载入信息.....\033[0m "

sleep 3

Get_IP

}

Get_IP()

{

clear

sleep 2

echo

echo "请选择IP源获取方式（自动获取失败的，请选择手动输入！）"

echo

echo "1、自动获取IP（默认获取方式，系统推荐！）"

echo "2、手动输入IP（仅在自动获取IP失败或异常时使用！）"

echo

read -p "请输入: " a

echo

k=$a

if [[ $k == 1 ]];then

sleep 1

echo "请稍等..."

sleep 1

IP=`curl -s ip.3322.net`;

wangka1=`ifconfig`;wangka2=`echo $
