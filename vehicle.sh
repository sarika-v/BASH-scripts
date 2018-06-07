#this script takes vehicle name as input and displays the vehicle's corresponding rent price

if [ $# -ne 0 ]
then
  echo "This program does not accept parameters"
  echo "Please re-run program without parameters"
  exit 1
fi

echo "The available rental options are displayed below"
echo "1.car"
echo "2.van"
echo "3.jeep"
echo "4.bike"
echo "5.bicycle"
echo "Please enter the option you want below"
read vehicle

case $vehicle in
  "car") echo "For $vehicle Rs.400 per day";;
  "van") echo "For $vehicle Rs.500 per day";;
  "jeep") echo "For $vehicle Rs.300 per day";;
  "bike") echo "For $vehicle Rs.200 per day";;
  "bicycle") echo "For $vehicle Rs.100 per day";;
  *) echo "Sorry, the rental option you seek is not available";;
esac

  
