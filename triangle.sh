#this script takes three numerical inputs and determines whether the numbers can be three sides of a triangle, if it is a triangle then the perimeter of the triangle is displayed and checks if the triangle is scalene

if [ $# -ne 0 ]
then 
  echo "This program does not accept parameters"
  echo "Please re-run the program without parameters"
  exit 1
fi

echo "Please enter the first side"
read first
echo "Please enter the second side"
read second
echo "Please enter the third side"
read third

if [ $first -gt $second ]
then 
  if [ $first -gt $third ]
  then
    c=$first #c denotes the largest side
    a=$second
    b=$third
  else
    c=$third
    a=$first
    b=$second
  fi
else
  if [ $second -gt $third ]
  then
    c=$second
    a=$third
    b=$first
  else
    c=$third
    a=$first
    b=$second
  fi
fi

sum=`expr $a + $b`
diff=`expr $a - $b`

if [ $diff -lt 0 ]
then
  sub=`expr -1 \* $diff`
else
  sub=$diff
fi

if [ $sum -gt $c -a $sub -lt $c ]
then
  echo "The given sides CAN form a triangle"
  peri=`expr $a + $b + $c`
  echo "The perimeter of the triangle is $peri"
  if [ $a -ne $b -a $b -ne $c -a $c -ne $a ]
  then
    echo "The given sides DO form a scalene triangle"
  else 
    echo "The given sides DO NOT form a scalene triangle"
  fi
else 
  echo "The given sides CANNOT form a triangle"
fi

 

