day=$(pwd | cut -d '/' -f 5 | cut -c 17-18)
read amount
for i in $(seq 0 $amount)
do
  if [ $i -lt 10 ]
  then
    mkdir ex0${i}
    touch ex0${i}/day${day}_ex0${i}.sql
  else
    mkdir ex${i}
    touch ex${i}/day${day}_ex${i}.sql
  fi
done