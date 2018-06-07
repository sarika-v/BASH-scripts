#this script takes numbers btw 10 and 99 as input from user, if number is even it prints all the divisors of the no, if it is odd it finds the sum of the digits

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run the program without parameters"
  exit 1
fi

echo "Please enter a number between 10 and 99"
read num

if [ $num -le 10 -o $num -ge 99 ]
then
  echo "Error - Invalid input"
  echo "Given number is not between 10 and 99"
  exit 1
fi

even=`expr $num % 2`
x=$num

if [ $even -eq 0 ]
then
  while [ $x -gt 0 ]
  do
    div=`expr $num % $x`
    if [ $div -eq 0 ]
    then
      echo "$x is a divisor of $num"
    fi
    x=`expr $x - 1`
  done
else
  sum=0
  rem=0
  while [ $x -gt 0 ]
  do 
    rem=`expr $x % 10`
    sum=`expr $sum + $rem`
    x=`expr $x / 10`
  done
  echo "The sum of the digits of $num is $sum"
fi


    
  
    
  
 
