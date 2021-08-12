# Defined via `source`
function dots --wraps='git --git-dir=$HOME/.local/builds/wmdots/ --work-tree=$HOME' --wraps='git --git-dir="$HOME/.local/builds/wmdots/" --work-tree="$HOME"' --wraps='git --git-dir=$HOME/wmdots/ --work-tree=$HOME' --description 'alias dots=git --git-dir=$HOME/wmdots/ --work-tree=$HOME'
  git --git-dir=$HOME/wmdots/ --work-tree=$HOME $argv; 
end
