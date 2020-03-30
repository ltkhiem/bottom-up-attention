COMMAND='/home/ltkhiem/anaconda3/envs/bottomup/bin/python /home/ltkhiem/source/bottom-up-attention/run_data.py'
LOGFILE=restart.txt

writelog() {
    now=`date`
    echo "$now $*" >> $LOGFILE

}

writelog "Starting"
while true ; do
    $COMMAND
    writelog "Exited with status $?"
    writelog "Restarting"
done
