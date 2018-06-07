#this script reverses a positive integer 

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run the program without parameters"
  exit 1
fi

echo "Please enter a positive integer"
read int

n=$int
rev=0
rem=0

while [ $n -gt 0 ]
do
  rem=`expr $n % 10`
  rev=`expr $rev \* 10 + $rem`
  n=`expr $n / 10`
done

echo "The reverse of the given string is $rev"
