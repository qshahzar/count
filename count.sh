#!bin/bash                                                                                                     
#12-17-15#                                                                                                    
#Shahzr Qureshi#                                                                                               

#This script counts the number you input by 2#                                                                 

echo "Enter your name:"
read name

nm='[^a-zA-Z]'
if [[ $name =~ $nm ]] ; then
  echo "Please use letters as your name" >&2; exit 1
fi

echo "Hello $name, enter a number"
read number

nb='[a-zA-Z0-91-)'
if [[ $number =~ $nb ]] ; then
  echo "Letters and special characters aren't allowed" >&2; exit 1
fi

if [ $number -lt '5' ]
then
echo "That was below the belt, enter a number between 5 and 100"
fi

if [ $number -gt '100' ]
then echo "That went over my head"
fi

for(( i=2; i < $number+1; i+=2));do
    echo $i
  done

