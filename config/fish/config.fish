if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
zoxide init fish | source
fzf --fish | source
thefuck --alias | source

set PATH $PATH /Users/keon/.local/bin

set -gx SHELL /usr/bin/fish

alias ll='eza -la'

abbr -a --position command -- ls eza
abbr -a --position command -- cat bat
abbr -a --position command -- cd z
abbr -a --position anywhere -- k kubectl
abbr -a --position anywhere -- kgp 'kubectl get pods'
abbr -a --position command -- lg lazygit
abbr -a --position command -- nv nvim
abbr -a --position command -- yz yazi
