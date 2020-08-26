#!/usr/bin/env bash


rofi_command="rofi -theme /home/core/Documents/dotfiles/.config/rofi/rofi_menu/powerlayout.rasi" 
uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown="󰿅"
reboot="󰜉"
lock="󰌾"

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock"

chosen="$(echo -e "$options" | $rofi_command -p "UP - $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        sh ~/.config/i3/lock.sh 
        ;;
esac

