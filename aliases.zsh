# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias weather="curl -4 http://wttr.in"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias js="cd $HOME/Documents/Development/javascript"

# cd
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../../'
alias ....='cd ../../../../'

# ls
alias ll='ls -la'
alias lt='ls -latr'

# todo-txt
alias t='todo.sh'

# docker
alias cleanupcontainers='docker ps -a | grep '"'"'weeks ago'"'"' | awk '"'"'{print $1}'"'"' | xargs docker rm'
alias cleanupcontainersall='docker ps -a | grep '"'"' ago'"'"' | awk '"'"'{print $1}'"'"' | xargs docker rm'

# youtube-dl
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'
alias ytdl='youtube-dl -c -r 80K -o "~/Downloads/%(title)s-%(id)s.%(ext)s"'
alias ytdl2='youtube-dl -c -r 160K -o "~/Downloads/%(title)s-%(id)s.%(ext)s"'
alias ytdl3='youtube-dl -c -r 240K -o "~/Downloads/%(title)s-%(id)s.%(ext)s"'
alias ytdl4='youtube-dl -c -r 360K -o "~/Downloads/%(title)s-%(id)s.%(ext)s"'
alias ytdl5='youtube-dl -c -r 480K -o "~/Downloads/%(title)s-%(id)s.%(ext)s"'
alias ytdlx='youtube-dl -c -o "~/Downloads/%(title)s-%(id)s.%(ext)s"'
