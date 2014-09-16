# disk usage alias
alias du='du -h'
alias df='df -h'

# The 'ls' family (this assumes you use the GNU ls))
# Mispelling on azerty keyboards
alias lks='ls'
alias ks='ls'
alias ms='ls'

alias ls='ls -hF --color'       # add colors for filetype recognition
alias l='ls -1'
alias la='ls -Al'               # show hidden files
alias lx='ls -lXB'              # sort by extension
alias lk='ls -lSr'              # sort by size
alias lc='ls -lcr'              # sort by change time
alias lu='ls -lur'              # sort by access time
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltr'              # sort by date
alias lm='ls -al --color=none|less'  # pipe through 'less'
alias ll='ls -l'
alias tree='tree -Csu'          # nice alternative to 'ls'

# Debian Stuff
alias sagi='sudo apt-get install'

# Other Stuff
alias boss='sudo su -'
alias s='sudo'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias ~='cd ~'
alias h='history'
alias reload='source ~/.bashrc'

# Dockah, Dockah, Dockah stuff
# From http://kartar.net/2014/03/some-useful-docker-bash-functions-and-aliases/

# Docker container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Removing containers
drm() { docker rm $(docker ps -q -a); }

# Removing images
dri() { docker rmi $(docker images -q); }

# Run a daemonized container with port mapping
alias dkd="docker run -d -P"

# Run an interactive container with port mapping
alias dki="docker run -t -i -P"

# Build a container and make it a tag - assumes Dockerfile in the current directory.
db() { docker build -t="$1" .; }
