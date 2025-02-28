function dir_type_prompt
    set -l repo_info (command git rev-parse --git-dir --is-inside-git-dir --is-bare-repository --is-inside-work-tree HEAD 2>/dev/null)
    if test -n "$repo_info"
        set dir_type_sym 
    else
        set dir_type_sym 
    end
    echo $dir_type_sym
end
