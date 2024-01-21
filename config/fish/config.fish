if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_color_error normal
set fish_color_command green
set fish_greeting

switch (uname)
case Linux
    #echo Hi Tux!
    fish_add_path $HOME/.cargo/bin
case Darwin
    eval (/opt/homebrew/bin/brew shellenv)
case FreeBSD NetBSD DragonFly
    #echo Hi Beastie!
case '*'
    #echo Hi, stranger!
end

alias pkm="cd ~/_; n ."
alias spc="aspell -no-backup -c"
alias cl="clear"
alias gofmt="goimports"
#alias xt3='exiftool -Model="RICOH GR III" -UniqueCameraModel="RICOH GR III" -T -ext dng .'
#alias 3tx='exiftool -Model="RICOH GR IIIx" -UniqueCameraModel="RICOH GR IIIx" -T -ext dng .'
alias vim="nvim"
alias n="nvim"
alias kssh="kitten ssh"
# alias dailynote="""date '+%d-%m-%Y.md' | awk '{print "~/_/log/daily/"$1}"""
alias timenow="date '+%H:%M'"
alias dailynote="today_date | daily_note"

function today_date
    date '+%d-%m-%Y.md' 
end

function daily_note
    read datestring
    echo "~/_log/daily/"$datestring
end


#ls replacement with exa
alias la="eza -a --group-directories-first"
alias lal="eza -la --group-directories-first"
alias lsl="eza -l --group-directories-first"
alias ls="eza --group-directories-first"
#alias tm="tmux ls && read tmux_session && tmux attach -t ${tmux_session:-default} || tmux new -s ${tmux_session:-default}"
alias tm="tmux new -As0"
alias tmc="tmux new -Ascode"

alias zij="zellij"

starship init fish | source

