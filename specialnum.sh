#this script takes a number as input from the user and classifies it as abundant, deficient or perfect number

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run program without parameters"
  exit 1
fi

echo "Please enter a number"
read num

if [ $num -ge 1000 -o $num -le 1 ]
then
  echo "The entered number is Invalid"
  exit 1
fi

x=`expr $num - 1`
sum=0
div=0

while [ $x -gt 0 ]
do 
  div=`expr $num % $x`
  if [ $div -eq 0 ]
  then
    echo "The number $x is a proper divisor of $num"
    sum=`expr $sum + $x`
  fi
  x=`expr $x - 1`
done

echo "The sum of the digits of $num gives $sum"

if [ $sum -eq $num ]
then
  echo "The number $num is a PERFECT number"
elif [ $sum -gt $num ]
then
  echo "The number $num is a ABUNDANT number"
elif [ $sum -lt $num ]
then
  echo "The number $num is a DEFICIENT number"
else 
  echo "Entered value is INVALID"
fi




  
