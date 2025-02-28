# Start X at login
if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx > /dev/null
  end
end

set fish_greeting
set -x EDITOR nvim
set -x TERM kitty

#
# Aliases
#
alias la='ls -A'
alias lla='ls -lA'
alias l1='ls -1'
alias la1='ls -a1'
alias update='sudo pacman -Syyu'
set -x PATH $PATH $HOME/.apps/Visual_Paradigm_CE_17.0/
#pfetch
set -x CHROME_EXECUTABLE google-chrome-stable
set -x PATH $PATH /home/clnico/.apps/bin

function dup
    kitty -d (pwd) ~/.config/fish/kitty.fish $argv & disown
end
alias lvim="nvim -c 'colorscheme gruvbox' -c 'set background=light'"
#colorscript random
