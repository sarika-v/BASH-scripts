#this script computes the value of first N nos

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run program without parameters"
  exit 1
fi

echo "Please enter the value of N"
read n

sum=0

for (( i=0; i<n; i++ ))
do
  sum=`expr $sum + $i`
done

echo "The sum of first $n numbers is $sum"
