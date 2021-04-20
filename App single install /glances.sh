 # Install Glances for CentOS 7/8
echo  'install yum utils'
yum install -y epel-release python3-devel python3-pip gcc

#Pip install glances
pip3 install  --upgrade pip
pip3 install psutil
pip3 install glances

#pip install glances[action,browser,cloud,cpuinfo,chart,docker,export,folders,gpu,ip,raid,snmp,web,wifi]

#
echo 'firewall-off'
firewall-cmd --zone=public --add-port=61208/tcp --permanent
firewall-cmd --reload

