if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add to PATH -> use fish_add_path
# set PATH -x $PATH:/usr/local/go/bin
# set PATH -x $PATH:$HOME/.cargo/bin
# set PATH -x $PATH:$HOME/.local/bin

# Load aliases/abbr
source $HOME/.config/fish/conf.d/abbr.fish

# Brew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# fzf
set -g -x FZF_DEFAULT_OPTS --height 40% --layout=reverse --border

# Starship
starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/mkd/miniconda3/bin/conda
    eval /home/mkd/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

# asdf
source ~/.asdf/asdf.fish