#this script find the GCD of two numbers

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run the program without parameters"
  exit 1
fi

echo "Enter the first number"
read a
echo "Enter the second number"
read b

if [ $b -le $a ]
then
  max=$b
else
  max=$a
fi

while [ $max -ne 0 ]
do 
  x=`expr $a % $max`
  y=`expr $b % $max`
  if [ $x -eq 0 -a $y -eq 0 ]
  then
    echo "The GCD of $a and $b is $max"
    exit 1
  fi
  max=`expr $max - 1`
done
