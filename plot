#!/bin/bash

source config 

if [ ! -d $T ]; then
    mkdir $T
fi
if [ ! -d $D ]; then
    mkdir $D
fi

time0=`date "+%Y-%m-%d-%H-%M-%S"`
logfile=${LOG}/${time0}.log
echo $APP plots create -k32 -t$T -d$D -b$B -u128 -r$R -x -f $F -p $P
echo $logfile
$APP plots create -k32 -t$T -d$D -b$B -u128 -r$R -x -f $F -p $P > $logfile 2>&1
echo $!
total=`grep 'Total time' $logfile|awk '{print $4}' | awk '{print int($1)}'`
if [ -n "$total" ];
then
  hour=$((${total}/3600))
  ./sendmsg $hour $D
fi
