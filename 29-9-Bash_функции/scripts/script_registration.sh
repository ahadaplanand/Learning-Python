#1/bin/bash

# Регистрация | 03.sh - авторизация

read -p "Enter your login: " login
read -s -p "Enter your password: " password
read -s -p "Repeat your password: " rpassword

if [ $password = $rpassword ]
then
echo -n "$login " >> hash_passwd
echo -n "$password" | md5sum >> hash_passwd
echo "Success"
else
echo "Passwords dont match(("
fi