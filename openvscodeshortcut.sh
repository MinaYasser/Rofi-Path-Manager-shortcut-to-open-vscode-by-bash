#!/bin/bash




values=$(cat "/home/kali/Desktop/Test/path")

selected_val=$(echo "$values" | rofi -dmenu -p "add/select")

if [ "$selected_val" == "add" ]
then 
selected_val=$(echo "" | rofi -dmenu -p "enter your path:  ")
if [ -n $selected_val ]; then
echo "$selected_val" >> /home/kali/Desktop/Test/path
fi
elif [ -n $selected_val ];then
code "$selected_val"
fi




