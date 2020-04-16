echo '
[1] 安装vscode
[2] 安装docker
[3] 安装git
[4] 安装maven
[5] 安装chrome
'
read -p 'enter a number: ' number
case $number in
            1)
                        echo '开始安装vscode...'
                        sudo add-apt-repository "deb [arch=`dpkg --print-architecture`] https://packages.microsoft.com/repos/vscode stable main"
                        sudo curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
                        sudo apt update
                        sudo apt install code
            ;;
            2)
                        echo '开始安装docker...'
            ;;
            3) 
                        echo '开始安装git...'
                        sudo apt update
                        sudo apt install git
            ;;
            4)
                        echo '开始安装maven...'
                        if [ `which java`x = ""x ]
                        then
                                    echo '未安装jdk，请先安装jdk'
                                    exit
                        fi
            ;;
            5)
                        echo '开始安装chrome...'
            ;;
esac

