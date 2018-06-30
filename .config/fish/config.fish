# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
source ~/.config/fish/functions/fzf_functions.fish

alias c='pygmentize -O style=vim -f console256 -g'
alias ls='exa'
alias la='exa -abghl --git'
alias j=z

set -g theme_color_scheme base16-dark

set -g man_blink -o red
set -g man_bold -o green
set -g man_standout -b black 93a1a1
set -g man_underline -u 93a1a1

set -g fish_user_paths /home/ryan/.fzf/bin

alias cls="clear; and printf '\e[3J'"
alias ducks="du -hsx * | sort -rh"
alias code="code-insiders"
alias wpython="python.exe"
alias apython="/mnt/c/Program\ Files/Anaconda3/python.exe"
alias wpip="pip.exe"
alias apip="/mnt/c/Program\ Files/Anaconda3/Scripts/pip.exe"
alias e="exit"
alias wgit="git.exe"
alias mongo="/mnt/c/Program\ Files/MongoDB/Server/3.2/bin/mongod.exe"
alias json="python -c'import fileinput, json;\
print(json.dumps(json.loads(\"\".join(fileinput.input())),\
                 sort_keys=True, indent=4))'"
alias volume="powershell.exe -File C:/Users/Ryan/Documents/Projects/volume.ps1"
alias notify="powershell.exe -File C:/Users/Ryan/Documents/Projects/notify.ps1"
alias no="powershell.exe -File C:/Users/Ryan/Documents/Projects/notify.ps1 'Message from script'"
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias cargo=cargo.exe
alias rustc=rustc.exe
alias gp="git.exe push"
alias gpp="git.exe pull"
alias gpdr="git.exe fetch origin; and git rebase"
alias ee="explorer.exe ."
alias eat="explorer.exe"

function source_bash
    exec /bin/bash -c "source $argv && exec fish"
end

# Start ssh agent stuff
eval (ssh-agent -c | sed 's/^echo/#echo/')
