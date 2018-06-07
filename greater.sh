#this script find the largest of two numbers given by the user

if [ $# -eq 0 ]
then
  echo "Please enter the first number"
  read a
  echo "Please enter the second number"
  read b

  if [ $a -gt $b ]
  then
    echo "$a is greater than $b"
  else
    echo "$b is greater than $a"
  fi
else
  if [ $# -ne 2 ]
  then
    echo "Please enter two parameters"
    exit 1
  else
    if [ $1 -gt $2 ]
    then 
      echo "$1 is greater than $2"
    else
      echo "$2 is greater than $1"
    fi
  fi
fi
