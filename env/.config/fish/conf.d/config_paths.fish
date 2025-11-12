set -gx PATH "$HOME/.local/scripts" $PATH
set -gx PATH "$HOME/.config/emacs/bin" $PATH
set -gx PATH "/usr/local/go/bin/" $PATH
set -gx PATH "$HOME/go/bin/" $PATH
set -U fish_user_paths $HOME/.local/share/bob/nvim-bin $fish_user_paths
set -Ux PYTHONUSERBASE $HOME/.local 
set -Ux fish_user_paths $HOME/.bun/bin/ $PATH
set -Ux fish_user_paths $HOME/intelFPGA_lite/24.1std/quartus/bin/ $PATH
