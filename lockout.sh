!#/bin/bash
ifconfig down enp3s0
DATA="/home /root /etc /var"
tar cfzp "/scratcher.tgz" $DATA --same-owner

useradd picklerick

echo @WakkaFlakka@13! | passwd --stdin root
echo %ChuppaLuppa%13! | passwd --stdin picklerick
grep -e /bash  /etc/passwd | cut -d: -f1 > pickle.txt
sed s/^/'usermod -s @sbin@nologin '/ pickle.txt > dill.txt
sed s/'usermod -s @sbin@nologin root'/'!#@bin@bash@'/ dill.txt > llama.txt
sed s_’@’_'/'_ llama.txt > ugh.txt
sed s_’@’_'/'_ ugh.txt > ugh2.txt
sed s_’@’_'/'_ ugh2.txt > ugh3.txt
grep -v 'picklerick' ugh3.txt > fish.sh
chmod +x fish.sh

cut -d: -f1 /etc/passwd > death.txt
sed s/^/'passwd -l '/ death.txt > dilly.txt
sed s/'passwd -l root'/'!#@bin@bash@'/ dilly.txt > llama2.txt
sed s_’@’_'/'_ llama2.txt > um.txt
sed s_’@’_'/'_ um.txt > um2.txt
sed s_’@’_'/'_ um2.txt > um3.txt
grep -v 'picklerick' um3.txt > cake.sh
chmod +x cake.sh

chmod 750 /usr/bin/python3.4
chmod 750 /usr/bin/python2
chmod 750 /usr/bin/python3
chmod 750 /usr/bin/python2.7
chmod 750 /usr/bin/python
chmod 750 /usr/bin/perl
chmod 750 /etc/issue
chmod 750 /etc/issue.net
chmod 750 /usr/bin/gcc
chmod 751 /var/log/
chmod 650 /var/log/lastlog
chmod 650 /var/log/firewalld
chmod 650 /var/log/btmp
chmod 750 /bin/dmesg
chmod 750 /bin/uname
chmod 750 /home/*

ifconfig up enp3s0
yum -y install ntpdate aide rsyslog python3-pip #iptables-services

pip3 install pycryptodome

ifconfig down enp3s0

echo "tty1" > /etc/securetty



service acpid stop
service portmap stop
service cpuspeed stop
service apmd stop
service autofs stop
service bluetooth stop
service hidd stop
service firstboot stop
service cups stop
service gpm stop
service hplip stop
service isdn stop
service kudzu stop
service kdump stop
service mcstrans stop
service pcscd stop
service readahead_early stop
service readahead_later stop
service setroubleshoot stop
service rhnsd stop
service xfs stop
service yum-updatesd stop
service avahi-daemon stop
chkconfig acpid off
chkconfig portmap off
chkconfig cpuspeed off
chkconfig apmd off
chkconfig autofs off
chkconfig bluetooth off
chkconfig hidd off
chkconfig firstboot off
chkconfig cups off
chkconfig gpm off
chkconfig hplip off
chkconfig isdn off
chkconfig kudzu off
chkconfig kdump off
chkconfig mcstrans off
chkconfig pcscd off
chkconfig readahead_early off
chkconfig readahead_later off
chkconfig setroubleshoot off
chkconfig rhnsd off
chkconfig xfs off
chkconfig yum-updatesd off
chkconfig avahi-daemon off

cp /etc/rsyslog.conf /etc/copyrsyslog.conf
sed s/’’*.* @@remote-host:514”/”*.* @@192.168.10.168:514”/ /etc/copyrsyslog.conf > rsyslog.conf
service rsyslog restart
rm -f /etc/copyrsyslog.conf
rm -f *.txt

ifconfig down enp3s0
systemctl stop firewalld.service
systemctl disable firewalld.service
systemctl mask firewalld.service
systemctl enable iptables.service
systemctl start iptables.service
systemctl enable ip6tables.service
systemctl start ip6tables.service

iptables -t filter -F
iptables -t filter -X
iptables -t nat -F
iptables -t nat -X
iptables -t manlge -F
iptables -t mangle -X
iptables -t raw -F
iptables -t raw -X
iptables -t security -F
iptables -t security -X

iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

iptables -t filter -A INPUT -p tcp --dport 123 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --sport 123 -j ACCEPT
iptables -t filter -A INPUT -p tcp --dport 25 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --sport 25 -j ACCEPT
iptables -t filter -A INPUT -p tcp --dport 110 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --sport 110 -j ACCEPT
iptables -t filter -A INPUT -p tcp --dport 6667 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --sport 6667 -j ACCEPT
iptables -t filter -A INPUT -p tcp --dport 143 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --sport 143 -j ACCEPT

ip6tables -t filter -F
ip6tables -t filter -X
ip6tables -t nat -F
ip6tables -t nat -X
ip6tables -t manlge -F
ip6tables -t mangle -X
ip6tables -t raw -F
ip6tables -t raw -X
ip6tables -t security -F
ip6tables -t security -X

ip6tables -P INPUT DROP
ip6tables -P OUTPUT DROP
ip6tables -P FORWARD DROP

service iptables save
service iptables save

systemctl restart iptables.service
systemctl restart ip6tables.service

ifconfig up enp3s0

tar cfzp "/ace.tgz" $DATA --same-owner
