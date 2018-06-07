#this script accepts two numbers from the user and performs a^2 + b^2 operation on them, it also takes a parameter that is added to the result of the previous operation

echo "Enter the first number"
read a
echo "Enter the second number"
read b
g=`expr $a \* $a`
h=`expr $b \* $b`
fin=`expr $g + $h`
x=$1
ans=`expr $x + $fin`
if [ $# -le 0 ]
then
  echo "There is no entered parameter"
  echo "The final answer is $fin"
else
  echo "The entered parameter is $x"
  echo "The final answer is $ans"
fi
