#this script takes an input between 1 and 99 and determines whether it is a perfect no: perfect no is a positive no which is equal to the sum of its proper divisors

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run the program without parameters"
  exit 1
fi

echo "Please enter a number between 1 and 99"
read num

if [ $num -le 1 -o $num -ge 99 ]
then
  echo "Error - Number input is out of constrains"
  exit 1
fi

sum=0
div=0
x=`expr $num - 1`

while [ $x -gt 0 ]
do 
  div=`expr $num % $x`
  if [ $div -eq 0 ]
  then
    sum=`expr $sum + $x`
    echo "$x is a proper divisor of $num"
  fi
  x=`expr $x - 1`
done

if [ $num -eq $sum ]
then
  echo "The number $num is a perfect number"
else
  echo "The number $num is NOT a perfect number"
fi



