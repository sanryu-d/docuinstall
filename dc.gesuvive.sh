IDRAC
10.1.2.50
10.1.2.51

IP PUBBLICI
185.31.67.74 fw1.dc.gesuvive
185.31.67.75 srv2.gesuvive.it
185.31.67.76 srv1.gesuvive.it
185.31.67.77

MGM/WAN-NETWORK
192.168.1.1 fw1.dc.gesuvive
192.168.1.2 hv1.dc.gesuvive
192.168.1.3 hv2.dc.gesuvive
192.168.1.5 vcsa.dc.gesuvive


192.168.1.10 - rdp.dc.gesuvive
192.168.1.11 - dns1.dc.gesuvive
192.168.1.12 - dns2.dc.gesuvive
192.168.1.13 - nas1.dc.gesuvive
192.168.1.15 - gitlab.dc.gesuvive 65104
192.168.1.16 - n8n.dc.gesuvive
192.168.1.17 - nas2.dc.gesuvive
192.168.1.18 - zbx.dc.gesuvive
192.168.1.19 - zbx.prx.dc.gesuvive
192.168.1.20 - srv1.gesuvive.it
192.168.1.21 - srv2.gesuvive.it
192.168.1.23 - api.dc.gesuvive
192.168.1.24 - next.gesuvive.it


192.168.1.71 qnap.dc.gesuvive
192.168.1.72 qnap.dc.gesuvive

192.168.1.99



192.168.1.101 switch cisco sb
192.168.1.252

LAN
10.0.0.100 -  fw1.dc.gesuvive
10.0.0.1   -  hv1.dc.gesuvive
10.0.0.2   -  hv2.dc.gesuvive
10.0.0.10  -  rdp.dc.gesuvive
10.0.0.11  -  dns1.dc.gesuvive
10.0.0.12  -  dns2.dc.gesuvive
10.0.0.13  -  nas1.dc.gesuvive
10.0.0.14  -  awx.dc.gesuvive
10.0.0.15  -  gitlab.dc.gesuvive
10.0.0.20  -  srv1.gesuvive.it
10.0.0.21  -  srv2.gesuvive.it
10.0.0.143
10.0.0.145





openssl req -subj '/CN=awx.dc.gesuvive/O=dev@gesuvive.it/C=IT' \
	-new -newkey rsa:2048 \
	-sha256 -days 1365 \
	-nodes -x509 \
	-keyout /root/awx-17.1.0/installer/awx-ssl/awx.key \
	-out /root/awx-17.1.0/installer/awx-ssl/awx.crt



http://192.168.1.14:30080


mariadb|php|nginx|pdns|docker|containerd|named|bind|openssl|lve|cagefs|unifi|postgresql|gitlab|onapp|exim|3cx|apache|openssh|openvpn|kernel|zlib|python|ImageMagick6|nss


rpm -Uvh https://repo.zabbix.com/zabbix/6.4/rhel/7/x86_64/zabbix-release-6.4-1.el7.noarch.rpm
yum clean all
yum update -y

systemctl restart zabbix-agent
systemctl enable zabbix-agent


wget https://repo.zabbix.com/zabbix/6.4/debian/pool/main/z/zabbix-release/zabbix-release_6.4-1+debian11_all.deb
dpkg -i zabbix-release_6.4-1+debian11_all.deb
apt update -y
apt upgrade -y

systemctl restart zabbix-agent
systemctl enable zabbix-agent
