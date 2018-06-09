#this script takes five integer numbers as input and stored them in an array and then sorts the array in ascending order

if [ $# -ne 0 ]
then 
  echo "This program does not accept parameters"
  echo "Please re-run program without parameters"
  exit 1
fi

for (( i=0; i<5; i++ ))
do
  echo "Enter number"
  read num[$i]
done

echo "The entered numbers are"
echo ${num[@]}

for (( i=0; i<5; i++ ))
do
  for (( j=$i; j<5; j++ ))
  do
    if [ ${num[$i]} -gt ${num[$j]} ]
    then
      hold=${num[$i]}
      num[$i]=${num[$j]}
      num[$j]=$hold
    fi
  done
done

echo "The sorted matrix in ascending order of numbers"
echo ${num[@]}
