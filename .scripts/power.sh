#!/usr/bin/env bash

options="✕ Cancel
 End session
 Shutdown
 Reboot
 Hibernate
 Sleep"

selection=$(echo -e "${options}" | rofi -dmenu -lines 5 -width 15 -location 0)
case "${selection}" in
	" End session")
		bspc quit;;
	" Shutdown")
		shutdown 0;;
	" Reboot")
		shutdown -r 0;;
	" Hibernate")
		shutdown -H 0;;
	" Sleep")
		systemctl suspend;;
esac
