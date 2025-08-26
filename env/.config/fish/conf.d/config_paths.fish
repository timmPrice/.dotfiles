set -gx PATH "$HOME/.local/scripts" $PATH
set -gx PATH "$HOME/.config/emacs/bin" $PATH
set -gx PATH "/usr/local/go/bin/" $PATH
set -gx PATH "$HOME/go/bin/" $PATH
set -Ux PYTHONUSERBASE $HOME/.local 
set -Ux fish_user_paths $HOME/.bun/bin/ $PATH
