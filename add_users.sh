#!/usr/bin/bash

//location of the txt file of the username
userfile =/home/roy/Desktop/userlist

//extracting username from the file one by one
username=$(cat /home/roy/Desktop/userlist | tr 'A-Z'  'a-z')

//defining the default password
password=$username@123

//running loop for adding users
for user in $username
do
   //adding users '$user' is a var that changes 
   //usernams accordingly in txt file
   useradd $user
   echo $password | passwd --stdin $user
done

