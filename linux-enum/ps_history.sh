# https://github.com/xiaoxiaoleo/pentest-script/edit/master/PrivilegeEscalation/Linux/ps_history.sh

while true
do
    echo "$(date '+TIME:%H:%M:%S') $(ps -e -o ruser,command >> pshistory)" | tee -a logfile
    awk '!seen[$0]++'  pshistory >  pshistory.temp
    mv pshistory.temp pshistory
    sleep 0.1
done
