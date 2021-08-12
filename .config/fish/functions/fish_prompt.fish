function fish_prompt
	set last_status $status

	git rev-parse --git-dir &> /dev/null
	if [ $status -eq 0 ]
		echo -n (set_color yellow)
	else
		echo -n \ 
	end

	if [ $last_status -eq 0 ]
		echo -n (set_color green)
	else
		echo -n (set_color red)
	end
	echo -n "|>" (set_color normal)
end
