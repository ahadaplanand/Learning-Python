#1/bin/bash

# Авторизация | 02.sh - регистрация

read -p "Enter your login: " login

flag="0"
cat hash_passwd | while read line    
    do
        IFS=' ' read -ra data <<< $line
        if [ "${data[0]}" = "$login" ]
        then
        read -s -p "Enter your password: " password
        hashpasswd="${data[1]} ${data[2]}"
        enterpasswd=$(echo "$password" | md5sum)
            if [ "$hashpasswd" = "$enterpasswd" ]
            then
            echo "Successful authentication!"
            else
            echo "Wrong password(("
            fi
        flag="1"
        break
        fi
    done

if [ "$flag" = "0" ]
then
echo "User not found(("
fi

# Пока не работает