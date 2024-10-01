yum install MariaDB-backup.x86_64 -y


mariadb-backup --backup --user=root --target-dir=/home/sanryu/preupgrade_bk


systemctl stop mariadb
yum remove "MariaDB-*"
yum remove "galera*"
rpm --query --all | grep -i -E "mariadb|galera"




wget https://r.mariadb.com/downloads/mariadb_repo_setup

echo "935944a2ab2b2a48a47f68711b43ad2d698c97f1c3a7d074b34058060c2ad21b mariadb_repo_setup" \
    | sha256sum -c -

chmod +x mariadb_repo_setup

sudo ./mariadb_repo_setup \
   --mariadb-server-version="mariadb-10.6"

yum install MariaDB-server MariaDB-backup -y

systemctl start mariadb
systemctl enable mariadb


/etc/my.cnf.d/server.cnf

systemctl restart mariadb



apt -y install mariadb-backup

mariadb-backup --backup --user=root --target-dir=/home/sanryu/preupgrade_bk

apt-get remove "mariadb-*"
apt remove galera-4
apt remove galera-3
apt list --installed | grep -i -E "mariadb|galera"





wget https://r.mariadb.com/downloads/mariadb_repo_setup

echo "935944a2ab2b2a48a47f68711b43ad2d698c97f1c3a7d074b34058060c2ad21b mariadb_repo_setup" \
    | sha256sum -c -

chmod +x mariadb_repo_setup

sudo ./mariadb_repo_setup \
   --mariadb-server-version="mariadb-10.6"

apt update



apt install mariadb-server mariadb-backup

systemctl start mariadb
systemctl enable mariadb