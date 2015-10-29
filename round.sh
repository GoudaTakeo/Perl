#!/bin/sh

base=`echo $1 | cut -d "." -f1`
test -z "$base" && base=0
decimal=`echo $1 | cut -d "." -f2 | cut -c1`
echo $1 | egrep "\." >/dev/null || decimal=0

if test $decimal -gt 5
then
   echo $(($base+1))
else
   echo $base
fi