function fish_prompt
    set -l last_status $status

    set -l red (set_color red)
    set -l green (set_color green)
    set -l yellow (set_color --bold yellow)
    set -l normal (set_color normal)

    if test $last_status = 0
        set status_color $green
    else
        set status_color $red
    end

    echo -n -s $status_color (dir_type_prompt) ' '  $yellow '⋊> '
end
