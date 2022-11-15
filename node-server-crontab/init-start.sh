#!/bin/bash
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
for item in $(cat /proc/1/environ | tr '\0' '\n');do echo "export ${item}" >>  /etc/environment;done
sed -i "$ a source /etc/environment" ~/.bashrc
sed -i "$ a source /etc/environment" /etc/screenrc
echo "* * * * * date >> /opt/build/test.md 2>&1" >> ~/init-crontab
echo "* * * * * /opt/restart.sh >> /opt/build/test.md 2>&1" >> ~/init-crontab
echo "* * * * * /opt/one_consumer.sh >> /opt/build/test.md 2>&1" >> ~/init-crontab
echo "* * * * * /opt/one_publish.sh >> /opt/build/test.md 2>&1" >> ~/init-crontab
crontab ~/init-crontab
rm -rf ~/init-crontab
service cron restart
service nginx restart
/opt/restart.sh
echo "end" >> /opt/test.md