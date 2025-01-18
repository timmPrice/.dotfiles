if status is-interactive
    # Commands to run in interactive sessions can go here
end


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/timprice/.opam/opam-init/init.fish' && source '/home/timprice/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
source '/home/timprice/.local/bin'
# END opam configuration
