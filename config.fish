
switch (uname)
    case Linux
        . $HOME/.config/fish/linux.fish
    case Darwin
        . $HOME/.config/fish/darwin.fish
    case FreeBSD
        . $HOME/.config/fish/freebsd.fish
end

set -gx GEM_HOME {$HOME}/.gem
#set -gx PATH $PATH /opt/homebrew/bin $HOME/.krew/bin $HOME/bin  
starship init fish | source



source ~/.config/fish/custom.fish

if command -q zoxide
    zoxide init --hook prompt fish | source
end

starship init fish | source
