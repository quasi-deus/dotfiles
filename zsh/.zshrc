# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bureau"

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
plugins=(
  git
)

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
function repos {
	cd  ~/Code/invisibl/quark/repos/$1
}
function quark {
	cd  ~/Code/invisibl/quark/$1
}
function aether {
	cd  ~/Code/invisibl/aether/$1
}
function opensource {
	cd  ~/Code/opensource/$1
}
function mamba {
	source  ~/.mamba.zshrc && mamba activate
}
function start_private() {
 ***REMOVED***
}

### GIT

function gitsync() {
  git remote update origin --prune
  git branch --v | grep '\[gone\]' | awk '{print $1}' | xargs git branch -D
  git pull
}

function uptodate() {
  git pull
  branch_name=$(git symbolic-ref -q HEAD)
  git checkout $1
  git pull
  git checkout $branch_name
  git merge $1
}

function commit() {
  if [ -f ./go.mod ]; then
    BUILD_OUTPUT=$(go build -o /dev/null 2>&1)
    BUILD_RESULT=$?
     if [ "$BUILD_RESULT" -ne 0 ]; then
      echo "$BUILD_OUTPUT" >&2 
      return "$BUILD_RESULT"
     fi
  fi
  git status
  git add -A
  git commit -m "$1"
}

function rebase() {
  git reset $(git merge-base $1 $(git rev-parse --abbrev-ref HEAD))
  git add -A
  git commit -m "$2"
}


decode_base64_url() {
  local len=$((${#1} % 4))
  local result="$1"
  if [ $len -eq 2 ]; then result="$1"'=='
  elif [ $len -eq 3 ]; then result="$1"'='
  fi
  echo "$result" | tr '_-' '/+' | openssl enc -d -base64
}

decode_jwt(){
   decode_base64_url $(echo -n $2 | cut -d "." -f $1) | jq .
}

# Decode JWT header
alias jwth="decode_jwt 1"

# Decode JWT Payload
alias jwtp="decode_jwt 2"

#golang
export GOPRIVATE=github.com/invisibl-cloud
export PATH=$PATH:$HOME/go/bin/
***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***
eval "$(zoxide init zsh)"
#emacs
***REMOVED***
export EDITOR=vim
***REMOVED***
export INFINITE="https://www.youtube.com/watch?v=jKN8jZoJcvA&list=PL4HalOHDUOu8DVl1ZRHDJRgrAqQqvaox_"
export TAMIL="https://www.youtube.com/playlist?list=PLNH_Shi1b0GaH_Z_Jhgmp0C9qVldFru2Q"
export ETERNITY="https://www.youtube.com/watch?v=MOx8rYaFjxQ&list=PL4HalOHDUOu8H0D2hSbErC60b0VcXVxHn&pp=gAQBiAQB"
export ENG="https://youtube.com/playlist?list=PLnY-R9hKGHwMnf8okdRdkbzDE_X93tCzn"
export CLASSICAL="https://www.youtube.com/watch?v=H1Dvg2MxQn8&list=PL4HalOHDUOu9Uh5WfhCYlOLoGbumbF1CQ"
export SHIRO='https://www.youtube.com/watch?v=JIlPMvBYHTw&list=PLZr0NqwBh4M51McugKrGX8RnB3DcIYXSQ'
export KAJI='https://www.youtube.com/watch?v=_HudC71bmlg&list=PL0vA9pBoLC3PfUQXz91joCE_o5WcC8n4t'
export HAYA='https://www.youtube.com/watch?v=VgDL2JctGEs&list=PLBbt8nQSWQw1ck0RNSFF0beQrmIOWu2f3'
export YIA="https://www.youtube.com/watch?v=CllT2SIw83Q&list=PLCsOwPldZgDQeDUrzaCeZIcA7Wpi5UWgJ"
export UNEARTHED="https://www.youtube.com/playlist?list=PLsOgFqR0cppAEuYATcmAxyHeSTkWM4ZWj"
export MAKARA="https://www.youtube.com/playlist?list=PLsOgFqR0cppA4gmF1-odqwPGoxwWLAEqi"
export CARTO="https://www.youtube.com/watch?v=bzApdhSevBY&list=PLsOgFqR0cppCMkzRHArHPzVGXETbqgSuY"
export ORI1="https://www.youtube.com/playlist?list=PLxbIk89I7mKuYQcurk0mK-h2Fo_aR1ss7"
export ORI2="https://www.youtube.com/playlist?list=PLS19zOYsmnkwokOUuQC0Kw0M8HAdtWVYj"

source /home/quasar/.config/broot/launcher/bash/br
