echo "------------ oneboot start ---------------"

# change ubuntu reposiroty to ali
echo "------------ change repository ---------------"
cat > /etc/apt/sources.list << EOF
deb http://mirrors.aliyun.com/ubuntu/ focal main restricted
deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted
deb http://mirrors.aliyun.com/ubuntu/ focal universe
deb http://mirrors.aliyun.com/ubuntu/ focal-updates universe
deb http://mirrors.aliyun.com/ubuntu/ focal multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-updates multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted
deb http://mirrors.aliyun.com/ubuntu/ focal-security universe
deb http://mirrors.aliyun.com/ubuntu/ focal-security multiverse
EOF
echo "------------ apt upgrade ---------------"
apt-get update
apt-get upgrade -y
echo "------------ apt vim ---------------"
apt-get install vim -y
echo "------------ apt virtualbox ---------------"
apt-get install virtualbox -y
echo "------------ apt indicator-multiload ---------------"
apt-get install indicator-multiload -y
echo "------------ apt psensor ---------------"
apt-get install psensor -y
echo "------------ apt google input ---------------"
sudo apt-get install fcitx fcitx-googlepinyin im-config
