
OFFICE:
93.42.201.202 OFFICE CHIESA IP PUBBLICO
RETE 192.168.10.x /24 192.168.10.1   85.18.200.200 89.97.140.140 #configurazione di rete DNS NS


#RETE NON SOTTO FIREWALL


192.168.9.1 - GATEWAY
192.168.9.2 - pve1.office.gesuvive
192.168.9.253 - fw1.office.gesuvive
192.168.9.10 - DRAC-hv1

yum install -y php php-bcmath php-cli php-common  php-dba        php-devel      php-enchant    php-fedora-au  php-fpm        php-gd php-imap php-intl php-ldap                    php-mbstring           php-mysqlnd            php-odbc               php-opcache            php-pdo                php-pear               php-pecl-apcu               php-pecl-gearman            php-pecl-geoip              php-pecl-mcrypt             php-pecl-recode             php-pecl-xdebug3            php-pecl-xmlrpc             php-pecl-zip                php-process                 php-soap                    php-sodium                  php-tidy                    php-xml                     

#RETE PFSENSE VM

10.0.10.24 SAMSUNG STAMPANTE
10.0.10.4  STAMPANTE CORRIDOIO
10.0.10.21 3cx.office.gesuvive
10.0.10.3 rdp.office.gesuvive
10.0.10.2 pve
10.0.10.5 n8n.office.gesuvive



sw1.office.gesuvive 10.0.10.133 #UFFICIO
sw2.office.gesuvive 10.0.10.134 #PALCO-SX
sw3.office.gesuvive 10.0.10.135 #REGIA-VIDEO
sw4.office.gesuvive 10.0.10.136 #DIETRO PROIEZIONE


telefoni:
01 C47295675814 Segreteria
02 547C694051F1 Past Angelo
03 547C6940787D Past Chiara
04 547C6940505A Selene
05 Cellulare Segreteria
06 547C69405334 Mixer


Aggiungi SIP TRUNK 023567535
TELEFONATE IN USCITA


CREATE DATABASE ilias CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'ilias'@'localhost' IDENTIFIED BY 'nuDwdopig#Z3oua%$gJwjs';
GRANT LOCK TABLES on *.* TO 'ilias'@'localhost';
GRANT ALL PRIVILEGES ON ilias.* TO 'ilias'@'localhost';
FLUSH PRIVILEGES;



getfacl -R /var/www/html/ilias > backup_permessi_htmlilias.acl
getfacl -R /var/www/data > backup_permessi_wwwdata.acl
find /var/www/data -type d -exec chmod 755 {} \;
find /var/www/data -type f -exec chmod 644 {} \;

find /var/www/html/ilias -type d -exec chmod 755 {} \;
find /var/www/html/ilias -type f -exec chmod 644 {} \;


SELECT CONCAT('ALTER TABLE ',TABLE_NAME,' ENGINE=InnoDB;') 
FROM INFORMATION_SCHEMA.TABLES
WHERE ENGINE='MyISAM'
AND table_schema = 'ilias';


#0d7e85

#009e8c



	
