# Defined in - @ line 1
function rd --wraps='rm -r -I -f' --description 'alias rd=rm -r -I -f'
  rm -r -I -f $argv;
end
