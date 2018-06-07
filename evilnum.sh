#this script takes a number N as input and finds all the EVIL numbers between 1 and N and writes them to a file evil.txt
#EVIL numbers are numbers whose binary expression have even number of 1's in them 

cat /dev/null>evil.txt

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run the program without parameters"
  exit 1
fi

echo "Enter a value of N between 1 and 1000"
read num
n=$num

if [ $num -le 1 -o $num -ge 1000 ]
then
  echo "Error - Invalid input"
  exit 1
fi

while [ $n -gt 0 ]
do
  x=$n
  div=0
  bin=0
  pow=0
  place=0
  for (( i=9; i>=0; i-- )) 
  do
    pow=$(echo "2^$i"|bc)
    div=$(echo "$x / $pow"|bc)
    if [ $div -eq 1 ]
    then
      place=$(echo "10^$i"|bc)
      bin=`expr $bin + $place`
      x=`expr $x - $pow`
    elif [ $div -eq 0 ]
    then
      continue
    else
      echo "Error"
    fi
  done
  count=0
  y=$bin
  rem=0
  while [ $y -gt 0 ]
  do 
    rem=`expr $y % 10`
    if [ $rem -eq 1 ]
    then
      count=`expr $count + 1`
    fi
    y=`expr $y / 10`
  done
  even=`expr $count % 2`
  if [ $even -eq 0 ]
  then
    echo "$n is an EVIL number     : $bin : Number of 1's- $count">>evil.txt
  else
    echo "$n is NOT an EVIL number : $bin : Number of 1's- $count">>evil.txt
  fi
  n=`expr $n - 1`
done
 
cat evil.txt


