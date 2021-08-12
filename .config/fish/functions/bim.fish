# Defined via `source`
function bim --wraps='MYVIMRC=~/.config/bim/init.vim nvim -u $MYVIMRC' --description 'alias bim=MYVIMRC=~/.config/bim/init.vim nvim -u $MYVIMRC'
  MYVIMRC=~/.config/bim/init.vim nvim -u $MYVIMRC $argv; 
end
