set -Ux TERM tmux-256color 

if status is-interactive
    # Commands to run in interactive sessions can go here
end

test -r '/home/tim-price/.opam/opam-init/init.fish' && source '/home/tim-price/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
set -U fish_user_paths $HOME/.local/share/pipx/venvs/*/bin $fish_user_paths
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
bind \cf 'exec tmux neww tmux-sessionizer'
