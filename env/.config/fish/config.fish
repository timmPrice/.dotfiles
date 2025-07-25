set -Ux TERM tmux-256color 

if status is-interactive
    # Commands to run in interactive sessions can go here
end

test -r '/home/tim-price/.opam/opam-init/init.fish' && source '/home/tim-price/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true

if test -d "$HOME/.local/bin/elixir/bin"
    set -gx PATH $HOME/.local/bin/elixir/bin $PATH
end

set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

set -U fish_user_paths ~/.local/bin $fish_user_paths
set -Ux PYTHONUSERBASE $HOME/.local 
set -Ux PATH /usr/bin $PATH
set -Ux PATH $HOME/.bun/bin $PATH
