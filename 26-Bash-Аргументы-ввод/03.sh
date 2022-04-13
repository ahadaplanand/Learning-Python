#1/bin/bash

# Авторизация | 02.sh - регистрация

login=$(zenity --entry --text="Entert your login:")

flag="0"
while IFS= read -r line    
    do
        IFS=' ' read -ra data <<< $line
        if [ "${data[0]}" = "$login" ]
        then
        password=$(zenity --password --text="Entert your password:")
        hashpasswd="${data[1]}  ${data[2]}"
        enterpasswd=$(echo -n "$password" | md5sum)
            if [ "$hashpasswd" = "$enterpasswd" ]
            then
            echo "Successful authentication!"
            else
            echo "Wrong password(("
            fi
        flag="1"
        break
        fi
    done < hash_passwd

if [ "$flag" = "0" ]
then
echo "User not found(("
fi

# line=$(sed '5!d' file) - получаем нужную строку