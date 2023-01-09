set -gx GEM_HOME {$HOME}/.gem
#set -gx PATH $PATH /opt/homebrew/bin $HOME/.krew/bin $HOME/bin  
starship init fish | source


source /opt/homebrew/opt/asdf/libexec/asdf.fish

source ~/.config/fish/custom.fish

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
