#!/bin/bash

read -p "Enter your hash type: " hashtype
read -p "Enter your $hashtype hash value: " val
echo $val | cat > file1.txt
read -p "Which file do you want to use default/custom (de/cu) :" file

if [ $file = "de" ] ; then
        john --format=$hashtype --wordlist=/home/neellinux/WORDLIST/rockyou.txt file1.txt
else
	read -p "Do you want to set the parameter of custom file (y/n) :" ans
	if [ $ans = "y" ] ; then
		bash /home/neellinux/WORDLIST/replace.sh
	        john --format=$hashtype --wordlist=/home/neellinux/WORDLIST/demo.txt file1.txt
	else
		john --format=$hashtype --wordlist=/home/neellinux/WORDLIST/demo.txt file1.txt
	fi	

fi



