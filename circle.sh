#this script calculates the area and circumference of a circle if the radius given by user is greater than 5

if [ $# -ne 0 ]
then 
  echo "This program does not accept parameters"
  echo "Please re-run the program without parameters"
  exit 1
fi

echo "Please enter the radius of the circle"
read r

if [ $r -gt 5 ]
then
  pi=3
  a1=`expr $r \* $r`
  area=`expr $pi \* $a1`
  c1=`expr $pi \* $r`
  cir=`expr 2 \* $c1`
  echo "The circumference of the circle is $cir"
  echo "The area of the circle is $area"
else
  echo "The given value of radius is less than 5"
  echo "Please enter a value of radius greater than 5 to get output"
fi



