#this script takes an input N from the user and displays a pattern upto N lines

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run the program without parameters"
  exit 1
fi

echo "Please enter the value of N"
read n
echo ""

for (( i=0; i<n; i++ ))
do
  for (( j=i; j>=0; j-- ))
  do 
    echo -n "$j "
  done
  echo 
done

echo ""


