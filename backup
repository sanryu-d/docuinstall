import os
import subprocess
import datetime

# Funzione per verificare lo spazio disponibile su disco
def check_disk_space():
    df_output = subprocess.check_output(["df", "-h", "/"])
    df_lines = df_output.decode().split("\n")[1]
    space_used_percent = int(df_lines.split()[4][:-1])
    return space_used_percent

# Funzione per ottenere la lista degli account cPanel
def get_cpanel_accounts(exclude_file):
    with open(exclude_file, "r") as f:
        excluded_names = [name.strip() for name in f.readlines()]
    cpanel_accounts = [account for account in os.listdir("/var/cpanel/users") if account not in excluded_names]
    return cpanel_accounts

# Funzione per eseguire pkgacct per ogni account cPanel
def run_pkgacct(account, log_file):
    backup_dir = "/home/backup"
    if not os.path.exists(backup_dir):
        os.makedirs(backup_dir)
    today = datetime.datetime.now().strftime("%d%m%y")
    backup_file = f"cpmove-{account}-{today}.tar.gz"
    pkgacct_command = ["/scripts/pkgacct", account, f"{backup_dir}/{backup_file}"]
    with open(log_file, "a") as log:
        process = subprocess.Popen(pkgacct_command, stdout=log, stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()
        if process.returncode != 0:
            error_message = f"Errore durante l'esecuzione di pkgacct per l'account {account}:\n{stderr.decode()}"
            log.write(error_message)
            send_email("Errore durante il backup cPanel", error_message)

# Funzione per inviare una mail
def send_email(subject, message):
    subprocess.run(["mail", "-s", subject, "dev@gesuvive.com"], input=message.encode())

def main():
    # Percorso del file di log
    log_file = "/var/log/cpanelbk-{0}.log".format(datetime.datetime.now().strftime("%d%m%y"))

    # Ottieni la lista degli account cPanel
    exclude_file = "exclude.txt"
    cpanel_accounts = get_cpanel_accounts(exclude_file)

    # Esegui pkgacct per ogni account cPanel
    for account in cpanel_accounts:
        run_pkgacct(account, log_file)

    # Altri passaggi per inviare i file via scp, eliminare i file sorgenti e gestire la retention

if __name__ == "__main__":
    main()
