#this script acts as a calculator with case statements

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

i="y"

while [ $i = "y" ]
do 
  echo "1. Addition"
  echo "2. Substraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "Enter your option"
  read opt

  case $opt in
    "1")  echo "Addition operation of $a and $b gives"
          echo `expr $a + $b`;;
    "2")  echo "Substraction operation of $a and $b gives"
          echo `expr $a - $b`;;
    "3")  echo "Mutplication operation of $a and $b gives"
          echo `expr $a \* $b`;;
    "4")  echo "Division operation of $a and $b gives"
          echo `expr $a / $b`;;
    *)  echo "Invalid operation"
  esac
  
  echo "Would you like to continue?"
  echo "Enter 'y' to continue or 'n' to exit"
  read i
  
  if [ $i != "y" ]
  then
    echo "Exiting program"
    exit 1
  fi
done
