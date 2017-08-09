#!/bin/bash
# Program
#    use ansible monitor db replication status !!
# History
#    2017-07-24 ma     first
# Path
#    ....
LogFileDir=/etc/ansible/mysql_manage/repl_status_log
LogFile=/etc/ansible/mysql_manage/repl_status_log/status.log
AnsibleDir=/etc/ansible/mysql_manage
Date=`date +%Y%m%d%H%M`
cd $LogFileDir
find . -name 'status.*' -exec rm -rf {} \;
cd $AnsibleDir
ansible-playbook /etc/ansible/mysql_manage/mysql_status.yml > $LogFile$Date
