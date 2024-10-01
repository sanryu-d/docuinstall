select subject, status_id, assigned_to_id, login from issues INNER JOIN users ON issues.assigned_to_id=users.id;
select subject, status_id,name,login, issues.created_on from issues INNER JOIN users ON issues.assigned_to_id=users.id INNER JOIN issue_statuses ON issue_statuses.id=issues.status_id where closed_on IS NULL;


INSERT INTO link_iscrizioni (nome, link, data) VALUES 
('ado','https://buytickets.at/gesuvive/552971','2021-08-08'),



INSERT INTO link_iscrizioni (nome, link, data) VALUES 
('chiesa','https://buytickets.at/gesuvive/638222','2022-02-06'),    
('chiesa','https://buytickets.at/gesuvive/638229','2022-02-13'),    
('chiesa','https://buytickets.at/gesuvive/638232','2022-02-20'),    
('chiesa','https://buytickets.at/gesuvive/638234','2022-02-27'),    
('chiesa','https://buytickets.at/gesuvive/638236','2022-03-06'),    
('chiesa','https://buytickets.at/gesuvive/638239','2022-03-13'),    
('chiesa','https://buytickets.at/gesuvive/638241','2022-03-20'),    
('chiesa','https://buytickets.at/gesuvive/638244','2022-03-27'),    
('chiesa','https://buytickets.at/gesuvive/638250','2022-04-03'),    
('chiesa','https://buytickets.at/gesuvive/638254','2022-04-10'),    
('chiesa','https://buytickets.at/gesuvive/638256','2022-04-17'),    
('chiesa','https://buytickets.at/gesuvive/638260','2022-04-24');    



GRANT ALL PRIVILEGES ON *.* TO 'USERNAME'@'1.2.3.4' IDENTIFIED BY 'PASSWORD' WITH GRANT OPTION;


CREATE USER 'read_redmine'@'localhost' IDENTIFIED BY '@SmTcM3BpQ.23';
GRANT SELECT ON redmine.* TO 'read_redmine'@'localhost';
FLUSH PRIVILEGES;
('2021-06-28','FINECELLULE','');

INSERT INTO appuntamenti (data, incontro, predicatore) VALUES 
('2021-10-07','Pillole di Omega3'),
('2021-10-21','Pillole di Omega3'),
('2021-11-04','Pillole di Omega3'),
('2021-11-18','Pillole di Omega3'),
('2021-11-25','Pillole di Omega3'),
('2021-12-09','Pillole di Omega3');
('2021-08-13','VUOTO','VUOTO'),
('2021-08-20','VUOTO','VUOTO'),
('2021-08-27','PREGHIERA2','Past.Ramona'),
('2021-09-03','PREGHIERA2','Past.Chiara');

INSERT INTO pulizie (giorno, cellula) VALUES 
(STR_TO_DATE('25-09-2023','%d-%m-%Y'),'Soccorso pronto'),
(STR_TO_DATE('02-10-2023','%d-%m-%Y'),'Ivan e Vanna + Betta Chiesa junior'),
(STR_TO_DATE('09-10-2023','%d-%m-%Y'),'Past. Ionel e Ramona + Federica Romussi'),
(STR_TO_DATE('16-10-2023','%d-%m-%Y'),'Paolo e Cinzia + Elena e Lorenzo'),
(STR_TO_DATE('23-10-2023','%d-%m-%Y'),'Sviluppo Artistico'),
(STR_TO_DATE('30-10-2023','%d-%m-%Y'),'Jacopo e Stefania + Silvia'),
(STR_TO_DATE('06-11-2023','%d-%m-%Y'),'Soccorso pronto'),
(STR_TO_DATE('13-11-2023','%d-%m-%Y'),'Ivan e Vanna + Betta Chiesa junior'),
(STR_TO_DATE('20-11-2023','%d-%m-%Y'),'Past. Ionel e Ramona + Federica Romussi'),
(STR_TO_DATE('27-11-2023','%d-%m-%Y'),'Paolo e Cinzia + Elena e Lorenzo'),
(STR_TO_DATE('04-12-2023','%d-%m-%Y'),'Sviluppo Artistico'),
(STR_TO_DATE('11-12-2023','%d-%m-%Y'),'Jacopo e Stefania + Silvia'),
(STR_TO_DATE('18-12-2023','%d-%m-%Y'),'Soccorso pronto'),
(STR_TO_DATE('25-12-2023','%d-%m-%Y'),'Ivan e Vanna + Betta Chiesa junior'),
(STR_TO_DATE('01-01-2024','%d-%m-%Y'),'Past. Ionel e Ramona + Federica Romussi'),
(STR_TO_DATE('08-01-2024','%d-%m-%Y'),'Paolo e Cinzia + Elena e Lorenzo'),
(STR_TO_DATE('15-01-2024','%d-%m-%Y'),'Sviluppo Artistico'),
(STR_TO_DATE('22-01-2024','%d-%m-%Y'),'Jacopo e Stefania + Silvia');



DELETE FROM link_iscrizioni WHERE  data < '2021-12-20';
DELETE FROM appuntamenti WHERE  data = '2021-06-09 00:00:00';

DELETE FROM pulizie WHERE  giorno < '2023-04-30';
select * FROM appuntamenti WHERE DATE_FORMAT(data, '%y-%m-%d') = date_format(date_add(curdate(),'%y-%m-%d'); 
select * FROM appuntamenti WHERE data = '2021-06-09'); 

SELECT * FROM appuntamenti WHERE DATE_FORMAT(data, '%y-%m-%d') = CURDATE() and incontro='FINECELLULE';



DELETE FROM offerta WHERE  giorno < '2023-04-09';


INSERT INTO offerta (giorno, offerta1, offerta2) VALUES 
('2023/09/24','Past. Ivan (1 culto 10:30)','Past. Ivan (1 culto 10:30)'),
('2023/10/01','Elena','Past. Ionel'),
('2023/10/08','Victor','Rev. Andrea'),
('2023/10/15','Past. Ramona (1 culto 10:30)','Past. Ramona (1 culto 10:30)'),
('2023/10/22','Manu','Ivan Visagli'),
('2023/10/29','Past. Roberta (1 culto 10:30)','Past. Roberta (1 culto 10:30)'),
('2023/11/05','Paolo','Michi'),
('2023/11/12','Past.Ionel','Jacopo'),
('2023/11/19','Past. Ivan (1 culto 10:30)','Past. Ivan (1 culto 10:30)'),
('2023/11/26','Rev. Andrea (1 culto 10:30)','Rev. Andrea (1 culto 10:30)'),
('2023/12/03','Victor','Stefania L'),
('2023/12/10','Manu','Federica S'),
('2023/12/17','Past. Ionel','Gabriele'),
('2023/12/24','Paolo','Lorenzo'), 
('2023/12/31','Past. Ramona (1 culto 10:30)','Past. Ramona (1 culto 10:30)'),
('2024/01/07','Cinzia','Past.Roberta'),
('2024/01/14','Ivan Visagli','Jacopo'),
('2024/01/21','Manu','Rev.Andrea'),
('2024/01/28','Past. Ivan (1 culto 10:30)','Past. Ivan (1 culto 10:30)');

INSERT INTO turni_offerta (giorno, offerta1, offerta2) VALUES 
('2024/04/07','Manu',''),
('2024/04/14','Past. Ionel',''),
('2024/04/21','Victor',''),
('2024/04/28','Past. Roberta',''),
('2024/05/05','Gabriele',''),
('2024/05/12','Jacopo',''),
('2024/05/19','Past. Ionel',''),
('2024/05/26','Ivan Visagli ',''),
('2024/06/02','Past. Ramona',''),
('2024/06/09','Past. Ivan',''),
('2024/06/16','Paolo',''),
('2024/06/23','Past. Roberta',''),
('2024/06/30','Lorenzo',''),
('2024/07/07','Past. Ivan',''),
('2024/07/14','Past. Ramona',''),
('2024/07/21','Federica S.',''),
('2024/07/28','Elena','');





INSERT INTO turni_leviti (domenica, nome1, nome2) VALUES 
('2024-04-07','Gianni',''),
('2024-04-14','Gabri',''),
('2024-04-21','Victor',''),
('2024-04-28','Ester',''),
('2024-05-05','P. Roby',''),
('2024-05-12','Tabi',''),
('2024-05-19','Matteo',''),
('2024-05-26','Cesar',''),
('2024-06-02','Ale',''),
('2024-06-09','Edo',''),
('2024-06-16','Sele','');


, INTERVAL 1 DAY

select * FROM offerta WHERE DATE_FORMAT(giorno, '%y-%m-%d') =  CURDATE() + INTERVAL 24 DAY;

offerta=$(mysql -u stra_user -p5UpY5QYuJ*N -D gesuvive_membri -BN -e  "select * FROM offerta WHERE DATE_FORMAT(giorno, '%y-%m-%d') =  CURDATE() + INTERVAL 24 DAY;");



mysql -u stra_user -p5UpY5QYuJ*N -D gesuvive_membri -BN -e "select giorno,offerta1 FROM offerta WHERE DATE_FORMAT(giorno, '%y-%m-%d') =  CURDATE() + INTERVAL 24 DAY;" | while IFS= read -r  loop; do
echo "$loop" ;
done

mysql -uroot -p example -N -e "select column from table" | while IFS= read -r loop
do
    echo "$loop"
done 
day=24
test1=$(mysql -u stra_user -p5UpY5QYuJ*N -D gesuvive_membri -BN -e "select offerta1 FROM offerta WHERE DATE_FORMAT(giorno, '%y-%m-%d') =  CURDATE() + INTERVAL $day DAY;")






https://www.redmine.org/projects/redmine/wiki/download

scarico l'ultima versione di redmine.

backup di /opt/redmine/redmine-4.1.3/config/configuration.yml e /opt/redmine/redmine-4.1.3/config/database.yml

mysqldump redmine > /home/sanryu/redmine.sql

rimuovo la cartella redmine vecchia
scoppatto il file nuovo e gli do i privilegi corretti  chown -R redmine: redmine-4.1.4


UPDATE membrichiesa SET nascita='2020-01-01' WHERE id = 607;




 create database gesuvive_membri;
 grant all privileges on gesuvive_membri.* to stra_user@localhost identified by '5UpY5QYuJ*N';
 flush privileges;






INSERT INTO membrichiesa (ruolo,nome,cognome,nascita,cellula) VALUES 
('Membri','Manuel','Di Luca','2023-11-07','Gesù Vive'),
('Membri','Luana','Pilloni','2022-11-06','Gesù Vive');



('Team Pastorale','Franco','Noce','2022-12-03','Pastori Connection'),
('Team Pastorale','Maria','Noce','2022-04-16','Pastori Connection');

mariabackup --backup \
      --user=root \
      --password=k+<jA8ZqtGpMyP(of \
      --target-dir=/root/preupgrade_backup