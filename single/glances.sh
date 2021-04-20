# Install Glances for CentOS 7/8
echo -e "\e[32m Install yum utils \e[0m"
yum install -y epel-release python3-devel python3-pip gcc

#Pip install glances
echo -e '\e[32m install pip utils \e[0m'
pip3 install  --upgrade pip
pip3 install psutil
pip3 install glances[action,browser,cloud,cpuinfo,docker,export,folders,gpu,ip,raid,snmp,web,wifi]

echo -e '\e[32m firewall-off \e[0m'
firewall-cmd --zone=public --add-port=61208/tcp --permanent
firewall-cmd --reload
