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

# Zoxide
zoxide init fish | source

# Change kubeconfig default path
set -gx KUBECONFIG $HOME/.config/kube/config

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
