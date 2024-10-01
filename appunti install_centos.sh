##Installazione base x CentOS 7
# yum search epel-release
# yum info epel-release
# yum install epel-release

##Aggiorno
 yum -y install epel-repository
 yum  -y install epel-release
yum update -y

#Installo vmwaretools
yum install open-vm-tools -y

#INSTALLO PACCHETTI VARI
yum -y install vim wget nano screen zip unzip git libyaml-devel zlib-devel curl-devel openssl-devel apr-devel apr-util-devel gcc ruby-devel gcc-c++ make postgresql-devel ImageMagick-devel sqlite-devel perl-LDAP mod_perl perl-Digest-SHA dstat ncdu

#RIAVVIO
reboot

#Inserisco gli utenti
useradd -g wheel sanryu -u 23
useradd -g wheel evangelist -u 30
useradd git
passwd sanryu


vCenter: 0A0FF-403EN-RZ848-ZH3QH-2A73P
vSphere: JV425-4h100-vzhh8-q23np-3a9pp

VMware vSphere ESXi 7.0 Enterprise Plus key

JJ2WR-25L9P-H71A8-6J20P-C0K3F

HN2X0-0DH5M-M78Q1-780HH-CN214

JH09A-2YL84-M7EC8-FL0K2-3N2J2

https://gist.github.com/jamesy0ung/a05fec71287fec8de7e86a1a9581ce8f

api crontab
#* * * * * /root/scripts/check_resource.sh  > /dev/nulll 2>&1
15 16 * * sun /root/scripts/insert_audio.sh > /dev/null 2>&1
0 3 * * * /root/scripts/autopull_scripts.sh >/dev/null 2>&1
0 * * * * /root/scripts/check_resolv.sh >/dev/null 2>&1
0 16 * * Wed /root/scripts/check_audiopubblicato.sh >/dev/null 2>&1

13.74.137.123

mkdir -p  .ssh
mkdir -p  /home/sanryu/.ssh
mkdir -p  /home/evangelist/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDfyTfwm46URrl5eb8iUzGZ+MyOuSZgJYdH/1rIPtEBGWatG0lOHI6bB2Y361UXRZ884h1mDz0rmFcfJ6BNkmAWWLiKzgAauhpVr2dFndHgkXEt87klafpdds3/sOaSOj+7aw4ysnx+bAYvegzD+D+OHDWpYnrbjeJu1tYTeUQqRw8rHkjf8uoDnOBud3exxrfKOlXtxKEYUceV44YDEwUq/loBkkg981uxB5YnSjsPLBn3EfCXP6vCbh3KjYDd6cSWk823vmFGMXTT1MNOB1s6YAHjcaaZf+440nOfMQsGcFIKNTjFVg4SFU+GrzogNe1q1EyHicI9WP0qJ8Rah8Sty77gvvNKQAR7D6amisSGrDt5t3+Ffe1Y+HVbcwArCKTnPUc5Gl43qpT5VwQfmbtJPd8MhmK+wCtMOwKkuKGQMa+iY/Sc6kuOh9FQU7IDMxeWDhZid5SaUenbCH+JeHH3jD5QV4qq7w+OHR+cxuJ2Ph8aVuMw8Jw97vHRdm8oUhhd1FbzbxV8OOPg9ByijZUa5kj4smAqnZ8btUefrLjNwolnDcmGG02Z3gFekHwSNMWvyR7bkJ7/ibyF043RtPvx1Ktcq3G+Qm/d3e3ys5iQEyBUogi7iYpTXHPobws9KZS5OqB1RoZAjsE8c1P00d6rfy9BGjsJtY29sokGf7XVqw== sanryu@SanryuDesktop' >> /home/sanryu/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDf4sS2QIQABeHvk+HrLEkGY9+1uSdoeQrU190HmG5BBzCUnzgitn8coupCzOLkI2C/Apm2pwAvjNm0bv8OxC/kGxvNJCYtBrbAXv3LxmAvY4bM2iX3R8NBm7eNvybaMhbDBlO+52h1e0HN1ntgTQr+DkKRTBi6MJvHkueNpXsGr0f+tTbGNfNcPQXKNy42+5UrLdW6cBHO9Ctj0m2LZnPoGFFigAk6nphvoOA6yX67js9JyUf/4aZDauk8TETthXn62PoWvyuZAKZ8TM+f9zypAUGSYpr+3g9VGpNDxYD8lgn9DAsSUVMnkUTg8P3ZQdhot2wz/Y1jZWlFFpbo+Lhlgy08cOLveGTp4gJpoavofBXYShltJPwcycmjes+UDSOvmUxA8K02/tWrEovyynVT9pWP8PEPP0fTL74iD5UCPd9JX6mr2sWR+krjdvbBspZENvRlS9bReR45NkU5pqDfoWx7kmJNMhUh2ib9ctloqj8gJlmHUBUvvFqAbSWogMGfVNII8KsFDs2TY4fceAaYdOrH7m6YygXJ2DLQgSVa3w/0YNXnqbvJ2lezV+SR5PbeMDwZPQpWFeTGSr/uCuDCoGh4HNled+/U7wr4AodYwbm4jL9C8qirrJyEbRkTa3nW8iDEWFy/IG1QNGcBVQ/gI+xrrAamKPOMFipwxt4TDQ== natanevangelista@MacBook-Pro-di-Natan.local' > /home/evangelist/.ssh/authorized_keys
cat <<EOT >> .ssh/id_ed25519
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
QyNTUxOQAAACC2cgHp/mtv55bKlsFm7bKBGCa87a7PNB+XNLHH4nxbUQAAAJgv1OrCL9Tq
wgAAAAtzc2gtZWQyNTUxOQAAACC2cgHp/mtv55bKlsFm7bKBGCa87a7PNB+XNLHH4nxbUQ
AAAECZpXqxKZp2hP8Dc1YK1rf01bW2cLou7ZyEOQRLuIRCPrZyAen+a2/nlsqWwWbtsoEY
Jrztrs80H5c0scfifFtRAAAAD2RldkBnZXN1dml2ZS5pdAECAwQFBg==
-----END OPENSSH PRIVATE KEY-----
EOT

chmod 600 .ssh/id_ed25519

cat <<EOT >> .ssh/config
Host repo.gesuvive.it
Port 65132
Preferredauthentications publickey
IdentityFile ~/.ssh/id_ed25519
EOT

setenforce 0
find /etc/selinux -name config -exec sed -i "s/SELINUX=permissive/SELINUX=disabled/" \{\} \;
find /etc/selinux -name config -exec sed -i "s/SELINUX=enforcing/SELINUX=disabled/" \{\} \;

find /etc/ssh -name sshd_config -exec sed -i "s/\#Port\ 22/Port\ 65100/" \{\} \;

find /etc/ssh -name sshd_config -exec sed -i "s/\#PubkeyAuthentication/PubkeyAuthentication/" \{\} \;
find /etc/ssh -name sshd_config -exec sed -i "s/\#AuthorizedKeysFile/AuthorizedKeysFile/" \{\} \;
find /etc/ssh -name sshd_config -exec sed -i "s/^\#PermitRootLogin\ yes/PermitRootLogin\ no/" \{\} \;
find /etc/ssh -name sshd_config -exec sed -i "s/^\#UseDNS yes\ yes/UseDNS\ no/" \{\} \;

find /etc/ -name sudoers -exec sed -i "s/#\ %wheel\tALL=(ALL)\tNOPASSWD:\ ALL/%wheel\tALL=(ALL)\tNOPASSWD:\ ALL/" \{\} \;
chmod 440 /etc/sudoers

systemctl enable sshd

x zabbix seguire guida ad hoc

#configuro firewallcmd
firewall-cmd --permanent --zone=public --add-port=65100/tcp #ssh
firewall-cmd --permanent --zone=public --add-port=80/tcp
firewall-cmd --reload
firewall-cmd --runtime-to-permanent
firewall-cmd --zone=public --list-ports
#per rimuovere
firewall-cmd --zone=work --remove-port=65100/tcp

mysql_secure_installation

## hostname
vim /etc/hosts
vim /etc/hostname

yum install httpd -y

systemctl enable httpd.service
systemctl start httpd.service


#MOD SSL
yum install mod_ssl -y
mkdir -p /etc/ssl/private
chmod 700 /etc/ssl/private

vim /etc/httpd/conf.d/ssl.conf
#commento
#SSLProtocol all -SSLv2
#SSLCipherSuite HIGH:MEDIUM:!aNULL:!MD5:!SEED:!IDEA
openssl pkcs12 -export -out /tmp/jira.gesuvive.it_fullchain_and_key.p12 -inkey /etc/ssl/private/apache-private.key -in /etc/ssl/private/apache-cert.crt -certfile /etc/ssl/private/ca.crt

SSLCertificateFile /etc/ssl/certs/
SSLCertificateKeyFile /etc/ssl/private/apache-selfsigned.key

cat <<EOT >> gesuvive-private.key
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAoYXWnOCb3S5de8l7WetkIhiskROeAywwiMIO1OZHeowibjqS
Yw4+n1MBIfWFxmXsRL4zs2gPD0uAMXKbYmTlaC+mY/fu1ki04UXmx3KrXcx0+FCs
z2Z73uIsGwSjXtTC+61rZ4tHyGu3bdxHzKQiWG6fGvaA++0uhRr7gPVjF3PQqpi/
skZcqN7ohD8XK72GnNxi47tMRHs85NqVZGhRLmEpqTEFiuuP0mzSZRqPV3A+oc8/
9uzwP5xIqAQQ2akCxg0U8zTurbIHzY92iZr+l4Gu0YRBQ6is1iMRMXeZTUFQM3/L
00I14ofA61ObwtURX8/dG7W/X9djduzXgnRAYwIDAQABAoIBAB59WCSm1WUsAmOC
hfFUWMOC6tg73sD0j3jRQOF5UpbUaw9pqQZfwvxqO7WAVi88QBw91x6PjwAxHVK4
MpKhPxiqnfsS6xeyA8reWhDeGXEMTiwtdmF0E//fq7mx53DYMrI1ayfRh8xSYP6w
7TC47u7IeuopC/ICNJzVmhIewATGAB6/uB8eFuiuYjFza/2/ujlt76i+3Ji9reU3
Rq9D6OCDva6lOmuB1gp8g0yvkX92FT3DiOgmIGyQ7dv7QRqN6EubLyO1kh1cn5M/
b9I/P0OCCTxedZV5aomxAzYQGyahw5dUDJ0EuiFf8lgsKNM7ex7xBpYHquZhusm6
GSMWhXECgYEAzsiJjx61Rg0O1gzS1wDCVz9rKKjAv1Ii4UN7GKapY9DhzAODCbkZ
eoM8iYC2fFloDW+IyExBL4D5aq1bS58K3BxxYR2G0LQvjzoySn8M9u8/8xORcxOd
1ydlTesHeshvqr+dg6Uu6Ays68XVutRpB6UddRKrSzvhO0PnqTG47UkCgYEAx/eK
5gVbM6V9xsXcAeW/Eh8sDAyIFmF8CojTrwPtEiZLhj1tZdFG/ZEwiZjHhgxB1HN2
8EZ41bv66M3Ae8VTkxYNoDLeheDeedHmTos/IrAnz0SwxfP4C3E1Oo0e3zOzsrcf
7eSAtTKUv9RiG6F/a6nEO7qwlT/IBw85BWZ83EsCgYBWhOexf1q/daU4gGMTXJjz
4nAWsgz7wAUiFZcCqHEFd5eSQgHo5o63iQOiUL2J5+q2fG1RyT4Y/zDcpq4lROVJ
VYlG5hDLcCjaF7KFIwWsqEwsi4p3CMUpCa3EXUti30yBt+zS8SFgLDWJ7NvRcSCE
91wM6QPM1cAWiQH78/b5KQKBgFQ4K+XpB5pe7vRSzPB3pNurCVAhzwcuE6IUMqOZ
kbV9L33gTTz+wVl2Vuz8zbvlWaxy3Pshky7htzFpxtHaL/LY7PA1vIbCSLEh+E/I
UdT4QCwJkDIvKJ8ZFQQN/5yeF+cDPY1iGds27HNGrfNZN2NO4vkNDeYuML7YaHmf
yqK1AoGAd6e8mB7RR+InpfWpXYpAGIgDrKyHwrvR6C/3o2mNgEE3+A7fVf3UzZDR
+W2/pb+RkpCZZEDsUJ5ryuHrEfGGfqBFSEvOKf2bb6gUs4sOeYJJbxQ3xhHq8qOX
FGteW6jSBVhTEuaMSi5WRTpka1oar/xwB/KY8xN0uDJOe6BIdYA=
-----END RSA PRIVATE KEY-----
EOT

cat <<EOT >> gesuvive-cert.crt
-----BEGIN CERTIFICATE-----
MIIGWjCCBUKgAwIBAgIMM8VbFinB+QR7CN3VMA0GCSqGSIb3DQEBCwUAMEwxCzAJ
BgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSIwIAYDVQQDExlB
bHBoYVNTTCBDQSAtIFNIQTI1NiAtIEcyMB4XDTE5MTEyMDE2MzEzOVoXDTIxMTIy
MDE2MzEzOVowOzEhMB8GA1UECxMYRG9tYWluIENvbnRyb2wgVmFsaWRhdGVkMRYw
FAYDVQQDDA0qLmdlc3V2aXZlLml0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
CgKCAQEAoYXWnOCb3S5de8l7WetkIhiskROeAywwiMIO1OZHeowibjqSYw4+n1MB
IfWFxmXsRL4zs2gPD0uAMXKbYmTlaC+mY/fu1ki04UXmx3KrXcx0+FCsz2Z73uIs
GwSjXtTC+61rZ4tHyGu3bdxHzKQiWG6fGvaA++0uhRr7gPVjF3PQqpi/skZcqN7o
hD8XK72GnNxi47tMRHs85NqVZGhRLmEpqTEFiuuP0mzSZRqPV3A+oc8/9uzwP5xI
qAQQ2akCxg0U8zTurbIHzY92iZr+l4Gu0YRBQ6is1iMRMXeZTUFQM3/L00I14ofA
61ObwtURX8/dG7W/X9djduzXgnRAYwIDAQABo4IDSzCCA0cwDgYDVR0PAQH/BAQD
AgWgMIGJBggrBgEFBQcBAQR9MHswQgYIKwYBBQUHMAKGNmh0dHA6Ly9zZWN1cmUy
LmFscGhhc3NsLmNvbS9jYWNlcnQvZ3NhbHBoYXNoYTJnMnIxLmNydDA1BggrBgEF
BQcwAYYpaHR0cDovL29jc3AyLmdsb2JhbHNpZ24uY29tL2dzYWxwaGFzaGEyZzIw
VwYDVR0gBFAwTjBCBgorBgEEAaAyAQoKMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8v
d3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMAgGBmeBDAECATAJBgNVHRME
AjAAMD4GA1UdHwQ3MDUwM6AxoC+GLWh0dHA6Ly9jcmwyLmFscGhhc3NsLmNvbS9n
cy9nc2FscGhhc2hhMmcyLmNybDAlBgNVHREEHjAcgg0qLmdlc3V2aXZlLml0ggtn
ZXN1dml2ZS5pdDAdBgNVHSUEFjAUBggrBgEFBQcDAQYIKwYBBQUHAwIwHwYDVR0j
BBgwFoAU9c3VPAhQ+WpPOreX2laD5mnSaPcwHQYDVR0OBBYEFOqKPc2JV3sWDHpR
ud8dz8ucV/DAMIIBfQYKKwYBBAHWeQIEAgSCAW0EggFpAWcAdQCkuQmQtBhYFIe7
E6LMZ3AKPDWYBPkb37jjd80OyA3cEAAAAW6Jp7uoAAAEAwBGMEQCIEdgKY2i7c6B
8sYEgyEjM5+CG5BKveSf3CJ17o6+V4oLAiABPS5S3HiZ2IHS1L0FfWJ9JJmZfIN5
+fEEaSAje+VLOwB2AFWB1MIWkDYBSuoLm1c8U/DA5Dh4cCUIFy+jqh0HE9MMAAAB
bomnu8cAAAQDAEcwRQIhANeKwkcBw7p2ja4SIT7UIlu3iSTWMxZQuiEDNejer3fb
AiAzo+waa8CK2AEJn6f9rzoEXLATOYpIoSMdTJVMhgWPwAB2APZclC/RdzAiFFQY
CDCUVo7jTRMZM7/fDC8gC8xO8WTjAAABbomnu6UAAAQDAEcwRQIgcjFJ1SBSGtGi
z4xjCN7VehxENLEHybTiSoMQtVU59poCIQCfZJA90IYo77r5ZVtwMdWyyl4pemXv
6Pw0BNjSvegkDzANBgkqhkiG9w0BAQsFAAOCAQEAACiuTrSDXfxkhuOF/Zp5vYvc
PV3Gnxftpn9BifBvODheMltIFr3SYZDgBemNQECw/hP2XV9YomiwPRKme6sXszO0
khduEoeRRgINIKF+FwmJ+oeUC012k2sZUjuGyTrKPLMLpedoRg962E/Vs3u3WQV4
yWgJKtzNOhnDhSPMUY/dJ6pN29GnFQcv0SViFF9oKu8FYqS841E9Mw/UHcij/DWM
WSlGoIW16YVYTKhypPuQQpxDm08QZODzTPO4IFT9gXHY5kZvm1ELZ/SdhcZzS3rC
VcEAm4xgInVWZc7pEREyZgEdZdoTY0jUH/xgf/UjNBzMRO0VKGEGLdA5sZN2Zg==
-----END CERTIFICATE-----
EOT

cat <<EOT >> gv-ca.crt
-----BEGIN CERTIFICATE-----
MIIETTCCAzWgAwIBAgILBAAAAAABRE7wNjEwDQYJKoZIhvcNAQELBQAwVzELMAkG
A1UEBhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExEDAOBgNVBAsTB1Jv
b3QgQ0ExGzAZBgNVBAMTEkdsb2JhbFNpZ24gUm9vdCBDQTAeFw0xNDAyMjAxMDAw
MDBaFw0yNDAyMjAxMDAwMDBaMEwxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9i
YWxTaWduIG52LXNhMSIwIAYDVQQDExlBbHBoYVNTTCBDQSAtIFNIQTI1NiAtIEcy
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2gHs5OxzYPt+j2q3xhfj
kmQy1KwA2aIPue3ua4qGypJn2XTXXUcCPI9A1p5tFM3D2ik5pw8FCmiiZhoexLKL
dljlq10dj0CzOYvvHoN9ItDjqQAu7FPPYhmFRChMwCfLew7sEGQAEKQFzKByvkFs
MVtI5LHsuSPrVU3QfWJKpbSlpFmFxSWRpv6mCZ8GEG2PgQxkQF5zAJrgLmWYVBAA
cJjI4e00X9icxw3A1iNZRfz+VXqG7pRgIvGu0eZVRvaZxRsIdF+ssGSEj4k4HKGn
kCFPAm694GFn1PhChw8K98kEbSqpL+9Cpd/do1PbmB6B+Zpye1reTz5/olig4het
ZwIDAQABo4IBIzCCAR8wDgYDVR0PAQH/BAQDAgEGMBIGA1UdEwEB/wQIMAYBAf8C
AQAwHQYDVR0OBBYEFPXN1TwIUPlqTzq3l9pWg+Zp0mj3MEUGA1UdIAQ+MDwwOgYE
VR0gADAyMDAGCCsGAQUFBwIBFiRodHRwczovL3d3dy5hbHBoYXNzbC5jb20vcmVw
b3NpdG9yeS8wMwYDVR0fBCwwKjAooCagJIYiaHR0cDovL2NybC5nbG9iYWxzaWdu
Lm5ldC9yb290LmNybDA9BggrBgEFBQcBAQQxMC8wLQYIKwYBBQUHMAGGIWh0dHA6
Ly9vY3NwLmdsb2JhbHNpZ24uY29tL3Jvb3RyMTAfBgNVHSMEGDAWgBRge2YaRQ2X
yolQL30EzTSo//z9SzANBgkqhkiG9w0BAQsFAAOCAQEAYEBoFkfnFo3bXKFWKsv0
XJuwHqJL9csCP/gLofKnQtS3TOvjZoDzJUN4LhsXVgdSGMvRqOzm+3M+pGKMgLTS
xRJzo9P6Aji+Yz2EuJnB8br3n8NA0VgYU8Fi3a8YQn80TsVD1XGwMADH45CuP1eG
l87qDBKOInDjZqdUfy4oy9RU0LMeYmcI+Sfhy+NmuCQbiWqJRGXy2UzSWByMTsCV
odTvZy84IOgu/5ZR8LrYPZJwR2UcnnNytGAMXOLRc3bgr07i5TelRS+KIz6HxzDm
MTh89N1SyvNTBCVXVmaU6Avu5gMUTu79bZRknl7OedSyps9AsUSoPocZXun4IRZZUw==
-----END CERTIFICATE-----
EOT

systemctl restart httpd

##Install php7.1
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y

yum install yum-utils  -y
yum-config-manager --enable remi-php73

#Se volessi installare un versione minore
yum-config-manager --enable remi-php74
yum-config-manager --disable remi-php71

yum-config-manager --disable remi-php70
yum-config-manager --enable remi-php56

yum install -y php php-opcache php-bcmath php-cli php-common php-dba php-devel php-enchant php-fpm php-gd php-imap php-intl php-ldap php-mbstring php-mcrypt php-mysql php-odbc php-pdo php-pear php-pecl-apcu php-pecl-gearman  php-pecl-geoip php-pecl-imagick php-pecl-xdebug php-process  php-recode php-snmp php-soap php-tidy php-xml php-xmlrpc php-opcache php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo php-xml
## Install phpmyadmin

 



yum -y install phpmyadmin
vim /etc/httpd/conf.d/phpMyAdmin.conf

#replace the 127.0.0.1

#Require ip your_workstation_IP_address

#Allow from your_workstation_IP_address

# Require ip your_workstation_IP_address

# Allow from your_workstation_IP_address

mysql
CREATE USER 'cap_wp1'@'localhost' IDENTIFIED BY 'E[LNfK(49vebbnc*8e^69#*2';
GRANT ALL PRIVILEGES ON cap_wp1.* TO cap_wp1@localhost IDENTIFIED BY 'E[LNfK(49vebbnc*8e^69#*2';
GRANT ALL PRIVILEGES ON * . * TO 'cap_wp1'@'localhost';
FLUSH PRIVILEGES;

chssgsvv_wp1

GRANT ALL PRIVILEGES ON gesuviveit.* TO 'jarvis'@'localhost' IDENTIFIED BY 'Hk78asd.099T@';

creare un alias
https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-centos-7


mysql -D zabbix -uzabbix -pNetsons.78@ < zabbix-2.0.1/database/mysql/schema.sql
mysql -D zabbix -uzabbix -pNetsons.78@ < zabbix-2.0.1/database/mysql/data.sql
mysql -D zabbix -uzabbix -pNetsons.78@ < zabbix-2.0.1/database/mysql/images.sql
You have successfully configured MySQL for Zabbix server.




#replace cookie to http
vim /etc/phpMyAdmin/config.inc.php

#add
Listen 9999
# and
<VirtualHost *:9999>
    DocumentRoot /usr/share/phpMyAdmin/
    ServerName srv3.gesuvive.it
</VirtualHost>



CREATE DATABASE cap_wp1 CHARACTER SET utf8 COLLATE utf8_bin;
CREATE USER 'conf_user'@'localhost' IDENTIFIED BY 'conf_user'
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER,INDEX on confdb.* TO 'conf_user'@'localhost' IDENTIFIED BY 'NJhpe6Ppr-@zAYT7';
flush privileges;

CREATE USER 'conf_user'@'localhost' IDENTIFIED BY 'conf_user';
set password for 'jira_user'@'localhost' = PASSWORD('NJhpe6Ppr-@zAYT7');
GRANT ALL PRIVILEGES ON * . * TO 'conf_user'@'localhost';
FLUSH PRIVILEGES;


#restarto httpd
/etc/init.d/httpd restart

echo 172.16.16.32 backup.gesuvive.it >> /etc/hosts


#INSTALLAZIONE LET'S ENCRYPT E SSL
yum install epel-release
yum install httpd mod_ssl python-certbot-apache -y
systemctl start httpd


#espandere disco in AZURE
#dal pannello espandere il disco primario.
#installare questa utility:

yum install cloud-utils-growpart 
growpart /dev/sda 2 

parted
unit s
print

reboot

parted /dev/sda2
resizepart 1
214GB
Yes
quit

xfs_growfs -d /dev/sda2 

reboot



STAGING - AMBIENTE DI TEST 

gv_apikey
sk_268_62984_270593c3cf117f3fa759c479ff3cb4f6


192.168.148.128 windows
/24
192.168.148.2

load 192.168.148.10 10.30.1.10
srv1 192.168.148.11 10.30.1.11
srv2 192.168.148.12 10.30.1.12
srv3 192.168.148.13 10.30.1.13



#loadbalacer NGNIX 1 load + 3 web
yum install nginx -y
/usr/share/nginx/html/index.html

vim /etc/nginx/nginx.conf

#ELIMINO QUESTO BLOCCO

server {
        listen       80 default_server;
        listen       [::]:80 default_server;
        server_name  _;
        root         /usr/share/nginx/html;

        # Load configuration files for the default server block.
        include /etc/nginx/default.d/*.conf;

        location / {
        }

        error_page 404 /404.html;
            location = /40x.html {
        }

        error_page 500 502 503 504 /50x.html;
            location = /50x.html {
        }
    }

#e aggiungo QUESTO:
 upstream web_backend {
        #ip_hash (se voglio specificare altri modi di fare loadbalance)
        server 192.168.148.11;
        server 192.168.148.12;
        #server 192.168.148.13;
 }

 server {
        listen 80;

        location / {
            proxy_set_header X-Forwarder-For $proxy_add_x_forwarded_for;
            proxy_pass http://web_backend;
        }
    }

restarto nginx


Hakase-labs123@

CREATE DATABASE wordpress;
CREATE USER adminuser@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO adminuser@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO wpuser@192.168.148.11 IDENTIFIED BY 'Netsons.78@';

FLUSH PRIVILEGES;


cd ~
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rsync -avP ~/wordpress/ /usr/share/nginx/html/

find . -type d -exec chmod 755 {} \;
find . -type f -exec chmod 644 {} \;


https://www.scalescale.com/tips/nginx/lsyncd-live-file-syncronization-linux/#

yum -y install lua lua-devel pkgconfig gcc asciidoc

yum install lsyncd
service lsyncd start
chkconfig lsyncd on
mkdir /var/log/lsyncd


vim /etc/lsyncd.conf

delete existing sync SUL SERVER MASTER DEFINISCO QUESTI VALORI:
settings {
logfile = "/var/log/lsyncd/lsyncd.log",
statusFile = "/var/log/lsyncd/lsyncd-status.log",
statusInterval = 10
}

-- Slave server configuration

sync {
default.rsync,
source="/var/www/",
target="IP:/var/www/",

rsync = {
compress = true,
acls = true,
verbose = true,
owner = true,
group = true,
perms = true,
rsh = "/usr/bin/ssh -p 22 -o StrictHostKeyChecking=no"
}
}

#CSF
cd /usr/src
rm -fv csf.tgz
wget https://download.configserver.com/csf.tgz
tar -xzf csf.tgz
cd csf
sh install.sh

se UPGRADE
systemctl stop zabbix-agent
yum remove zabbix-agent

#zabbix
rpm -Uvh https://repo.zabbix.com/zabbix/4.2/rhel/7/x86_64/zabbix-release-4.2-2.el7.noarch.rpm
yum -y install zabbix-get zabbix-agent
yum -y update


find /etc/zabbix -name zabbix_agentd.conf -exec sed -i "s/ServerActive=127.0.0.1/#ServerActive=172.16.16.34/" \{\} \;
find /etc/zabbix -name zabbix_agentd.conf -exec sed -i "s/Server=127.0.0.1/Server=172.16.16.34/" \{\} \;
find /etc/zabbix -name zabbix_agentd.conf -exec sed -i "s/# ListenPort=10050/ListenPort=10050/" \{\} \;

nome=`hostname`
find /etc/zabbix -name zabbix_agentd.conf -exec sed -i "s/Hostname=Zabbix server/Hostname=$nome/" \{\} \;


systemctl start zabbix-agent
systemctl enable zabbix-agent

#Installare zabbix AGENT
firewall-cmd --permanent --add-port=10050/tcp
firewall-cmd --reload
firewall-cmd --list-all

#sistemo /etc/hosts
echo "172.16.16.34 zabbix.gesuvive.it" >> /etc/hosts

systemctl restart zabbix-agent
https://www.zabbix.com/download?zabbix=4.2&os_distribution=centos&os_version=7&db=mysql


#ansible awx
https://devopstales.github.io/linux/awx-install/

INSERT INTO `link_iscrizioni` (`nome`, `link`, `data`) VALUES ('chiesa', 'https://buytickets.at/gesuvive/427129', '2020-09-27')
prova=$(mysql -u bclevwvu_link -pNetsons.78@ -D bclevwvu_linkupdate -BN -e  "select * FROM `link_iscrizioni` WHERE nome = 'chiesa');");
prova=$(mysql -u bclevwvu_link -pNetsons.78@ -D bclevwvu_linkupdate -e "select * FROM link_iscrizioni WHERE data='2020-09-27';");


rsync -avr  -e "ssh -p65100" --progress sanryu@192.168.1.17:/mnt/home-d/  /share/qbackup/media_backup/