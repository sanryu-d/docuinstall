#!/bin/bash
#set -x
INSTANCE_ID="11"  # TODO: Replace it with your gateway instance ID here
CLIENT_ID="dev@gesuvive.it"  # TODO: Replace it with your "Forever Green" client ID here
CLIENT_SECRET="7652d46540344ca2a3c2c1ee6804f72f"   # TODO: Replace it with your "Forever Green" client secret here



cd /var/www/data/administrator/files/Responsabili\ di\ Cellula/

lun=$(date -d '-1 day' '+%d%m%Y');

file=$(find . -name Predica_del_$lun*);

if [ ! -f "$file" ]
then
    echo "$0: File '${file}' not found."
else
file=$(find . -name Predica_del_$lun* -exec cp {} /home/rsync/audio_tmp/ \; );
fi

if [ ! -f "$file" ]; then echo "FILE: '${file}' file non trovato" ; else echo "FILE: '${file}' presente!";  fi
sshpass -p 'Samsung.22@' rsync --progress -avz -e "ssh -p 65100" /home/sanryu/cron.txt rsync@api.gesuvive.it:/home/rsync/


find / -name Predica_del_$var1*

api

+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| id             | int(11)      | NO   | PRI | NULL    | auto_increment |
| predicatore    | varchar(255) | NO   |     | NULL    |                |
| titolo         | varchar(255) | NO   |     | NULL    |                |
| data           | datetime     | NO   |     | NULL    |                |
| pubblico       | tinyint(4)   | YES  |     | NULL    |                |
| thumbnail      | varchar(255) | YES  |     | NULL    |                |
| id_youtube     | varchar(255) | YES  |     | NULL    |                |
| audio          | varchar(255) | NO   |     | NULL    |                |
| modificatoDaId | int(11)      | YES  | MUL | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+


echo "INSERT IGNORE INTO culto (predicatore, data, pubblico, audio, modificatoDaId) values ('Past. Angelo Scannapieco' , '' );" | mysql --host=localhost --user=jarvis --password=Hk78asd.099T@   gesuviveit;


INSERT INTO

uploads/Predicazione_

/home/evangelist/backend-gesuvive/uploads


gesuviveit
