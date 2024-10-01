#!/usr/bin/env python3
from datetime import date
import shutil
import os.path


today = date.today()
weekno = date.today().weekday()

old_file_name = "C:\\Users\\Mixer\\Desktop\\CULTI\\predica_del_133.mp3"
new_predica_name = 'E:\\owncloud\\Responsabili di Cellula\\'+today.strftime("%Y")+'\\Predica_del_'+today.strftime("%d%m%Y_%H-%M")+'.mp3'
renamefilepredica = 'C:\\Users\\Mixer\\Desktop\\CULTI\\Predica_del_'+today.strftime("%d%m%Y_%H-%M")+'.mp3'
new_preghiera_name = 'E:\\owncloud\\Responsabili di Cellula\\'+today.strftime("%Y")+'\\Preghiera_del_'+today.strftime("%d%m%Y_%H-%M")+'.mp3'
#se è domenica faccio cose
def rinomina_culto():
    if date.today().weekday() == 6:
        if os.path.isfile(old_file_name):
            shutil.copy2(old_file_name, new_predica_name )
            print("Ho copiato " + new_predica_name)
            os.rename(old_file_name, renamefilepredica)
        else:
            print ("Attenzione! il file non esiste o non si chiama predica_del_133.mp3")    

def rinomina_preghiera():
    if weekno < 5:
        if os.path.isfile(old_file_name):
            shutil.copy2(old_file_name,new_preghiera_name)
            print("Ho copiato " + new_preghiera_name)
            os.rename(old_file_name, new_preghiera_name)
        else:
            print ("Attenzione! il file non esiste o non si chiama predica_del_133.mp3")
def main():
    rinomina_culto()
    rinomina_preghiera()

if __name__ == '__main__':
    main()


