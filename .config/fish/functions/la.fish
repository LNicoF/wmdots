# Defined in - @ line 1
function la --wraps='ls -a' --description 'alias la=ls -A'
  ls -A $argv;
end
