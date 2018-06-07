#this script finds the largest of three numbers given by the user

if [ $# -eq 0 ]
then
  echo "Please enter the first number"
  read a
  echo "Please enter the second number"
  read b
  echo "Please enter the third number"
  read c
  if [ $a -gt $b ]
  then
    if [ $a -gt $c ]
    then
      echo "$a is the greatest number"
    else 
      echo "$c is the greatest number"
    fi
  else
    if [ $b -gt $c ]
    then
      echo "$b is the greatest number"
    else 
      echo "$c is the greatest number"
    fi
  fi
else
  if [ $# -ne 3 ]
  then 
    echo "Please enter three parameters"
  else
    if [ $1 -gt $2 ]
    then
      if [ $1 -gt $3 ]
      then
        echo "$1 is the greatest number"
      else 
        echo "$3 is the greatest number"
      fi
    else
      if [ $2 -gt $3 ]
      then
        echo "$2 is the greatest number"
      else 
        echo "$3 is the greatest number"
      fi
    fi
  fi
fi
