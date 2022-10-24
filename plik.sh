#!/bin/bash
#skrypcik 
echo "* *     * */1 *   root  sudo /bin/bash /home/administrator/Pulpit/kopia.sh" >> /etc/crontab
chmod u+x /home/administrator/Pulpit/kopia.sh
echo "* *     * * */7 root    sudo /bin/bash /home/administrator/Pulpit/kopia1.sh" >> /etc/crontab
chmod u+x /home/administrator/Pulpit/kopia1.sh
echo "* *     * * */1 root    sudo /bin/bash /home/administrator/Pulpit/kopia2.sh" >> /etc/crontab
chmod u+x /home/administrator/Pulpit/kopia2.sh
mkdir /backup
touch /var/log/kopia.log
