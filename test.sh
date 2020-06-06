echo "enter user's first name : "
read first_name
echo "enter user's last name : "
read last_name

pat=^[A-Z][A-Za-z0-9]{2,}$

if [[ $first_name =~ $pat && $last_name =~ $pat ]]
then
 echo $first_name $last_name
else
 echo "not a valid name"
fi

echo "enter user's email id : "
read email_id

pat="^[0-9a-zA-Z]+[.]*[0-9a-zA-Z]*[@][a-zA-Z]+([.][a-zA-Z]+){1,2}$"

if [[ $email_id =~ $pat ]]
then
 echo "valid"
else
 echo "not a valid id"
fi

echo "enter number : "
read phone_number
pat="^[0-9]{2}[ ][0-9]{10}$"
if [[ $phone_number =~ $pat ]]
then
 echo "valid number"
else
 echo "invalid number"
fi



