#!/bin/bash

read -p "What do you want Replace/Reset (rp/rs): " answer

if [ $answer = "rp" ] ; then

        file="user_data_wordlist.txt"
        read -p "Enter the name (First letter should be capital): " Name
        name=${Name,,}
        NAME=${Name^^}
        read -p "Enter the surname: " surname
        SURNAME=${surname^^}
        read -p "Enter the birthdate (dd/mm/yyyy): " wdob
        read -p "Enter the birthdate (dd/mm/yy): " dob
        read -p "Enter the phone number: " pno
        sed -i "s/"Bob"/$Name/g" $file
        sed -i "s/"bob"/$name/g" $file
        sed -i "s/"BOB"/$NAME/g" $file
        sed -i "s/"anderson"/$surname/g" $file
        sed -i "s/"ANDERSON"/$SURNAME/g" $file
        sed -i "s/"06062005"/$wdob/g" $file
        sed -i "s/"060605"/$dob/g" $file
        sed -i "s/"9635512343"/$pno/g" $file
else
        rm user_data_wordlist.txt
        cp user_duplicate.txt user_data_wordlist.txt
fi      





 
	

      

