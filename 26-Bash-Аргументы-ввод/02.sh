#1/bin/bash

# Регистрация | 03.sh - авторизация

read -p "Enter your login: " login
read -s -p "Enter your password: " password
read -s -p "Repeat your password: " rpassword

if [ $password = $rpassword ]
then
printf "$login " >> hash_passwd
printf "$password" | md5sum >> hash_passwd
else
echo "Passwords dont match(("
fi