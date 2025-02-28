function gdvim --wraps='nvim --listen 127.0.0.1:55432' --description 'alias gdvim nvim --listen 127.0.0.1:55432'
  nvim --listen 127.0.0.1:55432 $argv
        
end
