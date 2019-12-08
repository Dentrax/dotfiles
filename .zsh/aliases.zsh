#TODO: AntiTroll Like a Pro

# cd
#
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# grep
#
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias pg='ps -Af | grep $1'
alias hist='history | grep'

# ncdu
alias ncdu="ncdu --color dark"

alias quote="~/.config/conky/sidekick/res/quote-offline"
alias quote-online="~/.config/conky/sidekick/res/quote-online"
alias downmp3='f() { youtube-dl -o "~/Music/%(title)s.%(ext)s" --extract-audio --audio-format mp3 $1 };f'
alias gdate="curl -fs --head https://google.com | grep ^date: | sed 's/date: //g'"
alias amx_update="sudo pacman -Syu"
alias amx_add="sudo pacman -S"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# alias fixes
alias sudo='sudo -ES '
alias watch='watch '

# xset
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# misc
#alias df='df -h -T | grep -v tmpfs'
#alias du='du -h --max-depth=1 | sort -hr'
alias lsblk='lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL,UUID'
alias strc="awk '!/^ *#/ && NF'"
alias dmesg='clear; dmesg -eL -w'
alias c='clear'
alias r='tput reset'
alias cat='bat '
alias q="exit"
alias tls='/usr/bin/ls -lah | lolcat'
alias ls="exa --git --group-directories-first -lahGFm"
alias l="lsd -a"

# cmake
alias cmc='find . -name "CMakeCache.txt" -o -name "*.cmake" -o -name "Makefile" -o -name "CMakeFiles" -exec rm -rf {} +'

# Go
alias gg='go get -u -v '

# Git
alias gito='chromium https://github.$(git config remote.origin.url | cut -f2 -d. | tr ':' /)'
alias gitl='git log --all --decorate --oneline --graph'
alias gits='du -sh .git; git count-objects -v; git-sizer --verbose'

# Upload
fup() {
    [[ "$1" ]] || { echo "Error: Missing file" >&2; return 1; }
    curl -F "file=@$1" "https://0x0.st"
}

