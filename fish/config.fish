if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add to PATH
set PATH -x $PATH:/usr/local/go/bin
set PATH -x $PATH:$HOME/.cargo/bin

# Load aliases/abbr
source $HOME/.config/fish/conf.d/abbr.fish

# Starship
starship init fish | source
