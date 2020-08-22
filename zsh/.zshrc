# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#!/usr/bin/env zsh
# ~/.zshrc

if [[ "$OSTYPE" = linux* ]] ; then
    # Tilix
    # https://github.com/gnunn1/tilix/wiki/VTE-Configuration-Issue
    if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
    fi

    # Add customize site-functions
    fpath=(~/.local/share/zsh/site-functions $fpath)
fi

# Path to your oh-my-zsh configuration.
export ZSH="${HOME}/.oh-my-zsh"


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
### POWERLEVEL9K THEME ###
#if [[ "$OSTYPE" = darwin* ]] ; then
#    # Fira Code everywhere
#    POWERLEVEL9K_MODE='nerdfont-complete'
#else
#    # Operator Mono
#  #POWERLEVEL9K_MODE='awesome-fontconfig'
#   POWERLEVEL9K_MODE='nerdfont-complete'
#fi
#
#DEFAULT_USER=$USER
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context time
#                                   load battery status background_jobs
#                                   disk_usage dir dir_writable vcs
#                                   kubecontext virtualenv rbenv vi_mode)
#POWERLEVEL9K_TIME_FOREGROUND='011'
#POWERLEVEL9K_TIME_BACKGROUND='$DEFAULT_COLOR'
#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
#POWERLEVEL9K_RAM_ELEMENTS="ram_free"
#POWERLEVEL9K_STATUS_VERBOSE=false
#
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭─"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰─%B➤%b "
#POWERLEVEL9K_DISABLE_RPROMPT=true
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
#
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_right"
#
#POWERLEVEL9K_NODE_VERSION_BACKGROUND='022'
#POWERLEVEL9K_VIRTUALENV_BACKGROUND='blue'
#POWERLEVEL9K_KUBECONTEXT_BACKGROUND='027'

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Automatically upgrade itself without prompting
DISABLE_UPDATE_PROMPT=true

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="false"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="false"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    adb
    archlinux
    awscli
    bundler
    cabal
    colorize
    command-not-found
    encode64
    extract
    fancy-ctrl-z
    fzf
    gcloud
    gem
    git
    git
    git-extras
    git-flow-avh
    git-hubflow
    git-hubflow
    git-remote-branch
    github
    gitignore
    go-zsh-completions
    golang
    helm
    heroku
    history
    history-substring-search
    httpie
    iwhois
    k
    kops
    kubectl
    lol
    map
    mercurial
    mosh
    mpv
    node
    npm
    osx
    perl
    pew
    pip
    pyenv
    pylint
    python
    rake
    rbenv
    redis-cli
    rg
    rsync
    ruby
    rustup
    sbt
    scala
    screen
    sh-dircolors-solarized
    ssh-agent
    stack
    sudo
    supervisor
    systemadmin
    systemd
    terraform
    tmux
    urltools
    vagrant
    vi-mode
    virtualenv
    vscode
    web-search
    z
    zsh-autosuggestions
    zsh-completions
    zsh-dircolors-solarized
    zsh-syntax-highlighting
    zsh_reload
)

# User configuration

# tmux
# Automatically start tmux
ZSH_TMUX_AUTOSTART=false
# Only autostart once. If set to false, tmux will attempt to
# autostart every time your zsh configs are reloaded.
ZSH_TMUX_AUTOSTART_ONCE=true
# Automatically connect to a previous session if it exists
ZSH_TMUX_AUTOCONNECT=true
# Set term to screen or screen-256color based on current terminal support
ZSH_TMUX_FIXTERM=true
# The TERM to use for non-256 color terminals.
# Tmux states this should be screen, but you may need to change it on
# systems without the proper terminfo
#ZSH_TMUX_FIXTERM_WITHOUT_256COLOR="screen"
# The TERM to use for 256 color terminals.
# Tmux states this should be screen-256color, but you may need to change it on
# systems without the proper terminfo
#ZSH_TMUX_FIXTERM_WITH_256COLOR="screen-256color"

# source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration
# ZSHOPTIONS

# Basic
# beeps are annoying
setopt no_beep
# Allow comments even in interactive shells (especially for Muness)
setopt interactive_comments
# don't warm me about incomming mail
unsetopt mail_warning


# Changing Directories
# why would you type 'cd dir' if you could just type 'dir'?
setopt auto_cd
setopt cdablevars
# this will ignore multiple directories for the stack
setopt pushd_ignored_ups
setopt pushdminus

# Completion
# When completing from the middle of a word, move the cursor to the end of the word
setopt always_to_end
# This will use named dirs when possible
setopt auto_name_dirs
unsetopt listambiguous
# If unset, the cursor is set to the end of the word if completion is started.
# Otherwise it stays there and completion is done from both ends.
setopt complete_in_word
# show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_menu
# do not autoselect the first completion entry
unsetopt menu_complete


# History
# Allow multiple terminal sessions to all append to one zsh command history
setopt append_history
# save timestamp of command and duration
setopt extended_history
# Add comamnds as they are typed, don't wait until shell exit
setopt inc_append_history
# when trimming history, lose oldest duplicates first
setopt hist_expire_dups_first
# Do not write events to history that are duplicates of previous events
setopt hist_ignore_dups
setopt hist_ignore_all_dups
# remove command line from history list when first character on the line is a space
setopt hist_ignore_space
# When searching history don't display results already cycled through twice
setopt hist_find_no_dups
# Don't write duplicate entries in the history file.
setopt hist_save_no_dups
# Remove extra blanks from each command line being added to history
setopt hist_reduce_blanks
# don't execute, just expand history
setopt hist_verify
# imports new commands and appends typed commands to history
setopt share_history
setopt hist_no_store

# Prompt
# Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt prompt_subst
# only show the rprompt on the current prompt
#setopt transient_rprompt


# Scripts and Functions
# perform implicit tees or cats when multiple redirections are attempted
setopt multios


# Expansion and Globbing
# treat #, ~, and ^ as part of patterns for filename generation
# I don't know why I never set this before.
setopt extended_glob
# Case insensitive globbing
setopt nocaseglob
# Keep echo "station" > station from clobbering station
setopt noclobber
# If I could disable Ctrl-s completely I would!
setopt noflowcontrol
setopt nohup
# Be Reasonable!
setopt numericglobsort
# 10 second wait if you do something that will delete everything
setopt rmstarwait
# use magic (this is default, but it can't hurt!)
setopt zle

# Color listing
# if [[ "$OSTYPE" = darwin* ]] ; then
#     eval $(gdircolors ~/.dircolors)
# else
#     eval $(dircolors ~/.dircolors)
# fi

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

### Customize ENV, aliases and functions ###
[[ -s "${HOME}/.exports" ]] && source "${HOME}/.exports"
[[ -s "${HOME}/.aliases" ]] && source "${HOME}/.aliases"
[[ -s "${HOME}/.functions" ]] && source "${HOME}/.functions"
[[ -s "${HOME}/.secrets" ]] && source "${HOME}/.secrets"

# ssh hostname completion
# only completion hostname in ~/.ssh/config
zstyle -e ':completion:*:hosts' hosts 'reply=(${=${${${${(@M)${(f)"$(cat ~/.ssh/config 2>/dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}})'

# Automatically run ls after every cd
# function chpwd() {
#     emulate -L zsh
#     ls -a
# }

# zsh-autosuggestions
# Using Ctrl-Space for quick execute suggest command
bindkey '^ ' autosuggest-execute

### VI-MODE ###
export KEYTIMEOUT=1

# history-substring-search
# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Don't store failed command to history
zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }

# direnv
eval "$(direnv hook zsh)"

#fzf
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh


### Keychain ###
# Let re-use ssh-agent and/or gpg-agent between logins
#eval $(keychain --eval -Q --quiet --attempts 5 id_ed25519 id_rsa id_rsa_2048)
#source $HOME/.keychain/$(hostname)-sh
# source $HOME/.keychain/$(hostname)-sh-gpg


# Clear screen
clear

#transfer() {
#    curl --progress-bar --upload-file "$1" https://transfer.sh/$(basename $1) | cclip;
#}
#alias transfer=transfer
#Other
export VISUAL="nvim"
export EDITOR="nvim"

# IBus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
# Dành cho những phần mềm dựa trên qt4
export QT4_IM_MODULE=ibus
# Dành cho những phần mềm dùng thư viện đồ họa clutter
export CLUTTER_IM_MODULE=ibus
ibus-daemon -drx

#export TERM=xterm-256color        # for common 256 color terminals (e.g. gnome-terminal)
#export TERM=screen-256color       # for a tmux -2 session (also for screen)
#export TERM=rxvt-unicode-256color # for a colorful rxvt unicode session

#export TERM=deepin-terminals
#export GITHUB_TOKEN="a9c5b8ee32a25c4d8d38298123c2828e0a9ae19f"


export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
#export LC_ALL="en_US.UTF-8"

 #Kitty Terminal
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dawt.useSystemAAFontSettings=gasp -Dsun.java2d.xrender=true"


_JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel' 
_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "$_SILENT_JAVA_OPTIONS"'



#VAAPI
VAAPI_MPEG4_ENABLED=true

# End of ~/.zshrc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
