#!/bin/bash

read -p "What do you want Replace/Reset (rp/rs): " answer

if [ $answer = "rp" ] ; then

        file="demo.txt"
        read -p "Enter the name (First letter should be capital): " Name
        name=${Name,,}
        NAME=${Name^^}
        read -p "Enter the surname: " surname
        SURNAME=${surname^^}
        read -p "Enter the birthdate (dd/mm/yyyy): " wdob
        read -p "Enter the birthdate (dd/mm/yy): " dob
        read -p "Enter the phone number: " pno
        sed -i "s/"Neel"/$Name/g" $file
        sed -i "s/"neel"/$name/g" $file
        sed -i "s/"NEEL"/$NAME/g" $file
        sed -i "s/"suvagiya"/$surname/g" $file
        sed -i "s/"SUVAGIYA"/$SURNAME/g" $file
        sed -i "s/"08102005"/$wdob/g" $file
        sed -i "s/"081005"/$dob/g" $file
        sed -i "s/"7043945200"/$pno/g" $file
else
        rm demo.txt
        cp password.txt demo.txt
fi      





 
	

      

