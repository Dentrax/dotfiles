#TODO: AntiTroll Like a Pro

alias quote="~/.config/conky/sidekick/res/quote-offline"
alias quote-online="~/.config/conky/sidekick/res/quote-online"
alias downmp3='f() { youtube-dl -o "~/Music/%(title)s.%(ext)s" --extract-audio --audio-format mp3 $1 };f'
alias amx_update="sudo pacman -Syu"
alias amx_add="sudo pacman -S"
alias q="exit"
alias sudo='sudo -ES '
alias zls='ls -lah | lolcat'
alias ls="exa --git --group-directories-first -lahGFm"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias 'rm -rf /*'=rm_WTF
alias 'echo test'=rm_WTF


rm_WTF() {
   echo "WTF BRO?" >&2
   echo "Seriously?" >&2
   echo 'WHAT WERE YOU THINKING!?!?!' >&2
   sleep 3
}

