#!/bin/bash

FILENAME=new.txt
> $FILENAME #Vaciar archivo

echo -e "\n~~ kitty_ipsum_1.txt info ~~" >> $FILENAME

echo -e "\nNumber of lines:" >> $FILENAME
wc -l < kitty_ipsum_1.txt >> $FILENAME

echo -e "\nNumber of words:" >> $FILENAME
wc -w < kitty_ipsum_1.txt >> $FILENAME

echo -e "\nNumber of characters:" >> $FILENAME
wc -m < kitty_ipsum_1.txt >> new.txt >> $FILENAME

echo -e "\nNumber of times meow or meowzer appears:" >> $FILENAME
grep -o meow[a-z]* kitty_ipsum_1.txt | wc -l >> $FILENAME

echo -e "\nLines that they appear on:" >> $FILENAME
grep -n meow[a-z]* kitty_ipsum_1.txt | sed -E 's/([0-9]+).*/\1/' >> $FILENAME

echo -e "\nNumber of times cat, cats, or catnip appears:" >> $FILENAME
grep -o cat[a-z]* kitty_ipsum_1.txt | wc -l >> $FILENAME

echo -e "\nLines that they appear on:" >> $FILENAME
grep -n cat[a-z]* kitty_ipsum_1.txt | sed -E 's/([0-9]+).*/\1/' >> $FILENAME



echo -e "\n\n~~ kitty_ipsum_2.txt info ~~" >> $FILENAME

echo -e "\nNumber of lines:" >> $FILENAME
cat kitty_ipsum_2.txt | wc -l >> $FILENAME

echo -e "\nNumber of words:" >> $FILENAME
cat kitty_ipsum_2.txt | wc -w >> $FILENAME

echo -e "\nNumber of characters:" >> $FILENAME
cat kitty_ipsum_2.txt | wc -m >> $FILENAME

echo -e "\nNumber of times meow or meowzer appears:" >> $FILENAME
grep -o meow[a-z]* kitty_ipsum_2.txt | wc -l >> $FILENAME

echo -e "\nLines that they appear on:" >> $FILENAME
grep -n meow[a-z]* kitty_ipsum_2.txt | sed -E 's/([0-9]+).*/\1/' >> $FILENAME

echo -e "\nNumber of times cat, cats, or catnip appears:" >> $FILENAME
grep -o cat[a-z]* kitty_ipsum_2.txt | wc -l >> $FILENAME

echo -e "\nLines that they appear on:" >> $FILENAME
grep -n cat[a-z]* kitty_ipsum_2.txt | sed -E 's/([0-9]+).*/\1/' >> $FILENAME