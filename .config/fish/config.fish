set fish_greeting

# Start X at login
if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
	exec startx -- -keeptty &> /dev/null
  end
else
  PF_COL1=5 pfetch
  colorscript -e panes
  echo
end
