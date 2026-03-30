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
plugins=(bun gh uv nvm)

# run startup script
source $ZSH/oh-my-zsh.sh

##########################
### Personal Configs
##########################

# dotfiles repo function and aliases
function dotfiles() {
  /usr/bin/git --git-dir=$HOME/Repos/dotfiles/.git --work-tree=$HOME $@
}
alias df='dotfiles'
alias dfs='dotfiles status'
alias dfa='dotfiles add'
alias dfd='dotfiles diff'
alias dfc='dotfiles commit -m'
alias dfp='dotfiles push'
alias dfpl='dotfiles pull'

# Python alias
alias python=$(which python3.14)

# GitHub aliases
alias gc='git commit -m'
alias gd='git diff'
alias gds='git diff --staged'
alias gs='git status'
alias gb='git branch'
alias ga='git add'
alias gr='git restore'
alias gco='git checkout'
alias gp='git push'
alias gpl='git pull'

# Docker
export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"
alias dcr='docker compose run --rm'
alias dcd='docker compose down'
# alias dc='~/.run_compose.sh' # need to rewrite script

# init NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# gcloud python config
export CLOUDSDK_PYTHON=$(which python)

# unixodbc paths
export LDFLAGS="-L/opt/homebrew/Cellar/unixodbc/2.3.11/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/Cellar/unixodbc/2.3.11/include -I/opt/homebrew/opt/openjdk@17/include $CPPFLAGS" #  C/C++ preprocessor header file paths

# librdkafka paths
export C_INCLUDE_PATH=/opt/homebrew/Cellar/librdkafka/2.2.0/include
export LIBRARY_PATH=/opt/homebrew/Cellar/librdkafka/2.2.0/lib

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ~/.local/bin to PATH (claude, python, etc.)
export PATH="$HOME/.local/bin:$PATH"

# ghostty
export GHOSTTY_CONFIG_DIR="$HOME/Library/Application Support/com.mitchellh.ghostty/config"
export EDITOR=$(which vim)

# rust
export PATH="$HOME/.cargo/bin:$PATH"
alias claude-mem='bun "/Users/keenan/.claude/plugins/cache/thedotmack/claude-mem/10.5.5/scripts/worker-service.cjs"'
