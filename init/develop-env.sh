#! /bin/sh

echo '选择要安装的开发环境:
[1] java openjdk-8
[2] golang'

read -p "enter a number: " number


case $number in
            1) echo '开始安装openjdk-8...'
                        apt-get update
                        apt-get install -y openjdk-8-jdk
                        java -version
            ;;
            2)  echo '开始安装golang...'
                        add-apt-repository ppa:longsleep/golang-backports -y
                        apt update
                        apt install -y golang-go
                        dir=$(which go)
                        if [ "$dir"x = "x" ]
                        then
                                    echo "安装失败了,请重新安装"
                                    exit
                        fi
                        read -p '是否需要对golang配置代理?[y/n]' flag
                        case $flag in
                                    Y | y )
                                     echo "export GO111MODULE='on'\nexport GOPATH='${dir}'\nexport GOPROXY='https://goproxy.cn'" >>  ~/.bashrc
                                    source  ~/.bashrc
                                    ;;
                        esac
            ;;
esac