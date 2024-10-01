IP PUBBLICO STATICO
81.21.24.103





192.168.1.2 - sw1.wecaf.office

192.168.1.25:8007 - pbs1.wecaf.office
192.168.1.26:8006 - pve1.wecaf.office

192.168.1.251 - pbs1-wecaf-idrac
192.168.1.252 - pve1-wecaf-idrac
192.168.1.254 - fw1.wecaf.office



LAN PFSENSE
10.1.0.105  tenda access point

10.1.0.1	fw1.wecaf.office
10.1.0.15   api.wecaf.office
10.1.0.17   n8n.wecaf.office
10.1.0.67   vault.wecaf.office


10.1.0.200	rdp.wecaf.office
10.1.0.153  NAS

130-190 dhcp


10.1.0.70 nas2-gabri


\\10.1.0.20\documenti01
\\10.1.0.20\scanner01


yum install -y http://repo.almalinux.org/elevate/elevate-release-latest-el$(rpm --eval %rhel).noarch.rpm -y

systemctl stop nfs-server
systemctl stop rpcbind
systemctl disable nfs-server
systemctl disable rpcbind
umount /proc/fs/nfsd
umount /var/lib/nfs/rpc_pipefs
mount | grep nfs
yum remove nfs-utils nfs4-acl-tools -y
rmmod nfsd
rmmod nfs

yum remove kernel-3.10.0-1160.88.1.el7.x86_64 kernel-3.10.0-1160.105.1.el7.x86_64 kernel-3.10.0-1160.114.2.el7.x86_64 kernel-3.10.0-1160.118.1.el7.x86_64 -y
yum remove kernel-devel-3.10.0-1160.88.1.el7.x86_64 kernel-devel-3.10.0-1160.105.1.el7.x86_64 kernel-devel-3.10.0-1160.114.2.el7.x86_64 kernel-devel-3.10.0-1160.118.1.el7.x86_64 -y

echo "confirm = True" >> /var/log/leapp/answerfile

leapp preupgrade