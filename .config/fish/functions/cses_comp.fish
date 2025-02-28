function cses_comp
clang++ -Wall -O2 -std=c++11 -o $argv[ 1 ] $argv[ 1 ].cpp && kitty --class='floating_window' bash -c "./$argv[ 1 ]; echo Status: \$? && read" &
end
