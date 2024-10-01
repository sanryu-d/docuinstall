#IMAP VIA CLI
openssl s_client -crlf -connect imap.gmail.com:993 (-quite se non vuoi output)
tag login user@gmail.com password
tag LIST "" "*"
tag SELECT INBOX
tag STATUS INBOX (MESSAGES)
tag FETCH 6378:6388 (BODY[HEADER])

tag FETCH 6388 (BODY)
#The number 6388 corresponds to the number of the last message above - the first message would be 1, and so on.
# Message bodies are usually multipart - you can retrieve a particular part using
tag FETCH 6388 (BODY[n])
#n is a zero-indexed part number.
tag LOGOUT

#FTP by cli
ftp srv3.gesuvive.it
#Name devi inserire nome utnte ftp e password es.
mio@gesuvive.it 
$password

cd public_html #change directory
dir public_html #show directory
get
put

#IMAPSYNC
dnf/yum install imapsync -y

echo "secret" > /etc/secret1
echo "secret" > /etc/secret2
chmod 600 /etc/secret1
chmod 600 /etc/secret2

imapsync --host1 fiabesco.it --user1 info@fiabesco.it --passfile1 secret1 --host2 89.40.173.180 --user2  info@fiabesco.it --passfile2 secret1

imapsync --host1 server1.example.com --user1 sales@example.com --passfile1 secret1 --host2 server2.example.com --user2 sales@example.com --passfile2 secret2

imapsync --host1 outlook.office365.com --ssl1 --port1 993 --user1 alert@gesuvive.it --passfile1 secret1 --authuser1 alert@gesuvive.it  --automap  --host2 185.31.67.76 --user2 alert@gesuvive.it --passfile2 secret2



rm -f /etc/secret1
rm -f /etc/secret2

#creazione utenti openvpnAS

cd  /usr/local/openvpn_as/scripts/
./sacli --key "vpn.server.google_auth.enable" --value "true" ConfigPut
./sacli start

recuperare una chiave di google authtenticator
./sacli --pfilt sanryu  UserPropGet | grep "pvt_google_auth_secret"

- creo l'utente lato admin e via ssh con useradd $nomeutente
- passwd nomeutente per la password.