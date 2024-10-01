
CREATE DATABASE ilias CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'ilias'@'localhost' IDENTIFIED BY 'nuDwdopig#Z3oua%$gJwjs';
GRANT LOCK TABLES on *.* TO 'ilias@localhost';
GRANT ALL PRIVILEGES ON ilias.* TO 'ilias'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'chssgsvv_wp1'@'localhost' IDENTIFIED BY 'E[LNfK(49vebbnc*8e^69#*2';
GRANT ALL PRIVILEGES ON * . * TO 'ilias'@'localhost';
FLUSH PRIVILEGES;



data e data nella cartella ilias
template
css
Customizing
database 
vim ilias/data/gotoelearning/client.ini.php
ilias/ilias.ini.php  (aggiornare con i dati)
ilias/Services/UICore/templates/default/tpl.footer.html
ilias/favicon.ico

#docs utili
https://docu.ilias.de/ilias.php?ref_id=367&obj_id=57001&cmd=layout&cmdClass=illmpresentationgui&cmdNode=iv&baseClass=ilLMPresentationGUI

mkdir -p /var/www/ililog

#import export db
mysqldump -u root ilias > filesql da scaricare
mysql -u root ilias < file.sql da importare


yum install epel-release -y
yum install certbot python2-certbot-apache mod_ssl -y

certbot --apache -d stage1.agileimpresa.it

#check  
certbot renew --dry-run

#aggiungere a crontab
0 0,12 * * * python -c 'import random; import time; time.sleep(random.random() * 3600)' && certbot renew


#elimino le email;
delete from mail;
delete from mail_attachment;
#elimino gli utenti tranne root e coco
delete from usr_data where (usr_id!='6' AND usr_id!='274');
#gestione dati;
delete from obj_stat;
#elimino i risultati dei test
delete from tst_pass_result;
delete from tst_test_result;
delete from tst_active;
delete from note;
delete from obj_stat_log;

yum install epel-release
yum install ffmpeg ffmpeg-devel
yum install npm -y
npm install -g less


UPDATE tst_tests SET redirection_url = REPLACE(redirection_url, 'https://corsi.gotoelearning.it/' , 'https://corsi.agileimpresa.it/') WHERE redirection_url LIKE '%https://corsi.gotoelearning.it/%';

ALTER TABLE `usr_data` 
ADD COLUMN IF NOT EXISTS `first_login` datetime DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `last_profile_prompt` datetime DEFAULT NULL;



ALTER TABLE `usr_data` 
ADD COLUMN IF NOT EXISTS `usr_id` int(11) NOT NULL DEFAULT 0,
ADD COLUMN IF NOT EXISTS `login` varchar(80) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `passwd` varchar(80) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `firstname` varchar(32) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `lastname` varchar(32) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `title` varchar(32) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `gender` char(1) DEFAULT 'm',
ADD COLUMN IF NOT EXISTS `email` varchar(80) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `institution` varchar(80) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `street` varchar(40) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `city` varchar(40) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `zipcode` varchar(10) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `country` varchar(40) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `phone_office` varchar(40) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `last_login` datetime DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `last_update` datetime DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `create_date` datetime DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `hobby` varchar(4000) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `department` varchar(80) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `phone_home` varchar(40) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `phone_mobile` varchar(40) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `fax` varchar(40) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `time_limit_owner` int(11) DEFAULT 0,
ADD COLUMN IF NOT EXISTS `time_limit_unlimited` int(11) DEFAULT 0,
ADD COLUMN IF NOT EXISTS `time_limit_from` int(11) DEFAULT 0,
ADD COLUMN IF NOT EXISTS `time_limit_until` int(11) DEFAULT 0,
ADD COLUMN IF NOT EXISTS `time_limit_message` int(11) DEFAULT 0,
ADD COLUMN IF NOT EXISTS `referral_comment` varchar(250) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `matriculation` varchar(40) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `active` int(11) NOT NULL DEFAULT 0,
ADD COLUMN IF NOT EXISTS `approve_date` datetime DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `agree_date` datetime DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `client_ip` varchar(255) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `auth_mode` char(10) DEFAULT 'default',
ADD COLUMN IF NOT EXISTS `profile_incomplete` int(11) DEFAULT 0,
ADD COLUMN IF NOT EXISTS `ext_account` varchar(250) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `feed_hash` varchar(32) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `latitude` varchar(30) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `longitude` varchar(30) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `loc_zoom` int(11) NOT NULL DEFAULT 0,
ADD COLUMN IF NOT EXISTS `login_attempts` tinyint(4) NOT NULL DEFAULT 0,
ADD COLUMN IF NOT EXISTS `last_password_change` int(11) NOT NULL DEFAULT 0,
ADD COLUMN IF NOT EXISTS `reg_hash` char(32) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `birthday` date DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `sel_country` varchar(2) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `last_visited` longtext DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `inactivation_date` datetime DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `is_self_registered` tinyint(4) NOT NULL DEFAULT 0,
ADD COLUMN IF NOT EXISTS `passwd_enc_type` varchar(10) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `passwd_salt` varchar(32) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `second_email` varchar(80) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `first_login` datetime DEFAULT NULL,
ADD COLUMN IF NOT EXISTS `last_profile_prompt` datetime DEFAULT NULL;
PRIMARY KEY (`usr_id`),
UNIQUE KEY `uc1_idx` (`login`),
KEY `i1_idx` (`login`,`passwd`),
KEY `i2_idx` (`ext_account`,`auth_mode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ILIAS 6
COMPOSER INSTALL:
cd
yum install php-cli php-zip wget unzip
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
HASH="$(wget -q -O - https://composer.github.io/installer.sig)"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer --1

/usr/local/bin/composer





gitlab-ctl renew-le-certs




CREATE USER 'alecoco'@'%' IDENTIFIED BY '4biHYB$8uJ3';
CREATE USER 'alecoco'@'localhost' IDENTIFIED BY '4biHYB$8uJ3';
GRANT UPDATE, SHOW,VIEW,SELECT,INDEX,DELETE,ALTER ON appoggio.* TO 'alecoco'@'%';
FLUSH privileges;



GRANT SELECT, INSERT, UPDATE, DELETE ON `appoggio`.* TO `alecoco`@`localhost`;




CREATE DATABASE IF NOT EXISTS nextcloud CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;


CREATE USER 'nextuser'@'localhost' IDENTIFIED BY 'n0j23-nokVqVX9aQ0Ucg';
CREATE DATABASE IF NOT EXISTS nextcloud CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
GRANT ALL PRIVILEGES on nextcloud.* to 'nextuser'@'localhost';
FLUSH privileges;

