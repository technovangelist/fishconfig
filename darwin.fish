if status is-interactive
    eval (/opt/homebrew/bin/brew shellenv)
end

source (brew --prefix asdf)"/libexec/asdf.fish"

fish_add_path -aP /opt/homebrew/bin/

set -x SHELL /opt/homebrew/bin/fish
source (brew --prefix)/opt/asdf/libexec/asdf.fish

function bup
    brew update
    brew upgrade
    brew cleanup
end
