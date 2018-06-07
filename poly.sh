#this script performs the operation of ax^2+bx+c by taking the values of a,b and c from the user as input and the value of x as parameter

if [ $# -eq 0 ]
then
  echo "Please enter one parameter"
  exit 1
fi

x=$1
echo "Please enter the value of a"
read a
echo "Please enter the value of b"
read b
echo "Please enter the value of c"
read c

g=`expr $x \* $x`
first=`expr $a \* $g`
second=`expr $b \* $x`
fin=`expr $first + $second + $c`

echo "The final answer is $fin"
