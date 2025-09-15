##########################
## oh-my-zsh configs
##########################

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# set to "random" to load a random theme
# run: 'echo $RANDOM_THEME' to get random theme name
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# specific list of themes to cycle through when ZSH_THEME=random
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

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

# run startup script
source $ZSH/oh-my-zsh.sh

##########################
### Personal Configs
##########################

# alias for dot file repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/Repos/dotfiles/.git'

# python aliases
alias python='/usr/bin/python3'
alias pip='pip3'

# rust aliases
# alias rustc="$HOME/.cargo/bin/rustc"

# export pyenv to PATH
export PATH="$HOME/.pyenv/shims:$PATH"

# ensure brew exports are available (they were not in the macOS terminal)
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# GitHub aliases
alias gc='git commit -m'
alias gd='git diff'
alias gds='git diff --staged'
alias gs='git status'
alias gb='git branch'
alias ga='git add'
alias gr='git restore'
alias gco='git checkout'

# Docker aliases
alias dcr='docker compose run --rm'
alias dcd='docker compose down'
# alias dc='~/.run_compose.sh' # need to rewrite script

# init NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kt720t/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kt720t/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kt720t/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kt720t/google-cloud-sdk/completion.zsh.inc'; fi

# gcloud config
export CLOUDSDK_PYTHON=$(which python3.11)

# openssl paths
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L$(brew --prefix openssl@1.1)/lib" # library file paths
export CFLAGS="-I$(brew --prefix openssl@1.1)/include" # C compiler flags
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"

# unixodbc paths
export LDFLAGS="-L/opt/homebrew/Cellar/unixodbc/2.3.11/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/Cellar/unixodbc/2.3.11/include -I/opt/homebrew/opt/openjdk@17/include $CPPFLAGS" #  C/C++ preprocessor header file paths

# librdkafka paths
export C_INCLUDE_PATH=/opt/homebrew/Cellar/librdkafka/2.2.0/include
export LIBRARY_PATH=/opt/homebrew/Cellar/librdkafka/2.2.0/lib

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
[ -s "/Users/kt720t/.bun/_bun" ] && source "/Users/kt720t/.bun/_bun"

# Java
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# bat configs
export BAT_THEME="dracula"

# set zsh as default profile
export PROFILE="~/.zshrc"