if status is-interactive
    # Commands to run in interactive sessions can go here
end

# # Load brew completions
# if test -d (brew --prefix)"/share/fish/completions"
#     set -p fish_complete_path (brew --prefix)/share/fish/completions
# end

# if test -d (brew --prefix)"/share/fish/vendor_completions.d"
#     set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
# end

# Load aliases/abbr
source $HOME/.config/fish/conf.d/abbr.fish

# Brew
# eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Starship
starship init fish | source

# ASDF
# source ~/.asdf/asdf.fish
source /home/linuxbrew/.linuxbrew/opt/asdf/libexec/asdf.fish

# Zoxide
zoxide init fish | source

# Change kubeconfig default path
set -gx KUBECONFIG $HOME/.config/kube/config