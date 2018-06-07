#this script takes a number as input and determines if it is a armstrong number. Armstrong numbers are the numbers whose sum of digits to the power of the no of digits is equal to the number itself.

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run the program without parameters"
  exit 1
fi

echo "Please enter the number to be evaluated"
read num

pow=0
x=$num

while [ $x -gt 0 ]
do 
  x=`expr $x / 10`
  pow=`expr $pow + 1`
done

unit=0
dig=0
x=$num
sum=0

while [ $x -gt 0 ] 
do 
  dig=`expr $x % 10`
  unit=$(echo "$dig^$pow"|bc)
  sum=`expr $sum + $unit`
  x=`expr $x / 10`
done

if [ $sum -eq $num ]
then
  echo "The given number $num IS an Armstrong number"
else
  echo "The given number $num IS NOT an Armstrong number"
fi

