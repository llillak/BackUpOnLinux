#!/bin/bash

#kopia folderu /etc co miesiąc

backup_files="/etc"

dest="/backup"

day=$(date +%B%g)
hostname=$(hostname -s)
archive_file="$hostname-$day.tar"
if ! [ -f $dest/$archive_file.gz ];then
echo "z " $day  " -------" >> /var/log/kopia.log
echo "kopia zapasowa $backup_files to $dest/$archive_file">>/var/log/kopia.log
date >> /var/log/kopia.log 
echo "oto lista kopiowanych plikow:">>/var/log/kopia.log

tar -cvf $dest/$archive_file --absolute-names $backup_files >> /var/log/kopia.log
echo "liczba plikow:" >> /var/log/kopia.log
wc -l $dest/$archive_file >> /var/log/kopia.log
echo "plik bez kompresji" >> /var/log/kopia.log
du -h $dest/$archive_file >> /var/log/kopia.log
gzip $dest/$archive_file >> /var/log/kopia.log
echo "plik po kompresji">> /var/log/kopia.log
du -h $dest/$archive_file.gz >> /var/log/kopia.log
fi

