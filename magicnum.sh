#this script takes a number as input from user and determines if it is a MAGIC number or not. A MAGIC number is a number whose sum of digits of a number multiplied by the reverse of the sum is the same as the number

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run program without parameters"
  exit 1
fi

echo "Enter number to be evaluated"
read num
x=$num
sum=0
dig=0

while [ $x -gt 0 ]
do
  dig=`expr $x % 10`
  sum=`expr $sum + $dig`
  x=`expr $x / 10`
done

echo "The sum of digits: $sum"
y=$sum
rev=0
dig=0

while [ $y -gt 0 ]
do 
  dig=`expr $y % 10`
  rev=`expr $rev \* 10 + $dig`
  y=`expr $y / 10`
done

echo "The reverse of $sum: $rev"
mult=`expr $sum \* $rev`
echo "$sum*$rev=$mult"

if [ $mult -eq $num ]
then
  echo "$num IS a MAGIC number"
else
  echo "$num IS NOT a MAGIC number"
fi


