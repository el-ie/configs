#
#bonjour
setxkbmap -option caps:swapescape

#utile ?
alias nestcmd='/mnt/nfs/homes/eamar/bin/nest/node_modules/.bin/nest'


#config
alias Aconf="type Aconf && vim ~/.config/nvim/init.vim"

	#aliases for transcandance
alias pp="type pp && docker-compose --file /mnt/nfs/homes/eamar/goinfre/2brains/docker-compose.yml"
alias ps="type ps && docker ps"

	#Postgres
alias "Apost"="type Apost && docker exec -it nestjs_container bash"
alias "Adbrm"="type Adbrm && docker-compose --file /mnt/nfs/homes/eamar/goinfre/2brains/docker-compose.yml rm -f -v -s postgres_service"
alias "Adbstart"="type Adbstart && docker-compose --file /mnt/nfs/homes/eamar/goinfre/2brains/docker-compose.yml start postgres_service"
alias "Adbrestart"="type Adbrestart && docker-compose --file /mnt/nfs/homes/eamar/goinfre/2brains/docker-compose.yml restart postgres_service"
alias "Adbagain"="type Adbagain && Adbrm && Adbstart && sleep 0.3 && Adeploy"
	#Nestjs
alias Anest="type Anest && docker exec -it nestjs_container bash"
alias Adeploy="type Adeploy && docker-compose --file /mnt/nfs/homes/eamar/goinfre/2brains/docker-compose.yml exec nestjs_service sh -c 'cd /app && npx prisma migrate deploy'"
alias Astudio="type Astudio && docker-compose --file /mnt/nfs/homes/eamar/goinfre/2brains/docker-compose.yml exec nestjs_service sh -c 'cd /app && npx prisma studio'"

alias Alogsn="type Alogsn && while true; do; docker logs back; sleep 0.2; done"

alias Agon="type Agon && cd /mnt/nfs/homes/eamar/goinfre/2brains/backend"
alias Agoon="type Agoon && cd /mnt/nfs/homes/eamar/goinfre/2brains/backend/src"

	#React
alias Areact="type Areact && docker exec -it react_container bash"
alias Alogsr="type Alogsr && while true; do; docker logs front; sleep 0.2; done"

alias Agor="type Agor && cd /mnt/nfs/homes/eamar/goinfre/2brains/frontend"
alias Agoor="type Agoor && cd /mnt/nfs/homes/eamar/goinfre/2brains/frontend/src"

# racine projet
alias Ago="type Agoon && cd /mnt/nfs/homes/eamar/goinfre/2brains"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/bin/node_modules/tree-sitter-cli:$PATH
export PATH=$HOME/bin/nvim-linux64/bin:$PATH
#export PATH=$HOME/bin/node_modules/typescript/bin:$PATH

export PATH=$HOME/bin/node_modules/.bin:$PATH
export PATH=$HOME/bin/fd:$PATH

#diff-so-fancy
export PATH=$HOME/bin/diff-so-fancy:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

path+=('/mnt/nfs/homes/eamar/ungit_dir/node_modules/ungit/bin')

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# mkup - auto update or create a makefile
alias mkup="~/.local/mkup"

alias pst="docker exec -it postgres_container bash"
alias nst="docker exec -it nestjs_container bash"
alias vim='nvim'
