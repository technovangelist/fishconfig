abbr asht asdf
abbr c clear

abbr k kubectl
abbr kg "kubectl get"
abbr kga "kubectl get -A"
abbr kgan "kubectl get -A -n"
abbr kd "kubectl describe"
abbr kda "kubectl describe -A"

if type -q exa
    abbr ls exa
    abbr la "exa -alh"
    abbr tree "exa --tree -L3"
    abbr t2 "exa --tree -L2"
    abbr t3 "exa --tree -L3"
else
    abbr l ls
    abbr ll 'ls -l'
    abbr la 'ls -la'
end

if type -q bat
    abbr cat bat
    set -x BAT_THEME base16
    set -x COLORTERM truecolor
end



abbr .. "cd ..;pwd"
abbr ... "cd ../..;pwd"

abbr gc 'git commit'
abbr gs 'git status'
abbr gp 'git push origin HEAD'
abbr gpl 'git pull origin HEAD'
alias gitroot 'cd (git rev-parse --show-toplevel)'



if type -q hx
    abbr e hx
    set -x EDITOR hx
else if type -q nvim
    abbr e nvim
    set -x EDITOR nvim
else
    abbr e vim
    set -x EDITOR vim
end

if type -q nvim
    abbr v nvim
    abbr vim nvim
else
    abbr v vim
end
type -q fzf; and set fzf_preview_dir_cmd exa --all --color=always
set -gx FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS 
	--color=fg:#c0caf5,bg:#1a1b26,hl:#bb9af7
	--color=fg+:#c0caf5,bg+:#1a1b26,hl+:#7dcfff
	--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff 
	--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a"


if type -q pnpm
    abbr npm pnpm
end

set -x NPM_PACKAGES "$HOME/.npm-packages"
set -x NODE_PATH "$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
fish_add_path -aP "$NPM_PACKAGES/bin"

if type -q direnv
    eval (direnv hook fish)
end

alias dus='du -sh ./* | sort -h'
abbr avault 'ansible-vault edit vault.yml'
