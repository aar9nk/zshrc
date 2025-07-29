export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh
fpath+=($HOME/.zsh/pure)

zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "zsh-users/zsh-history-substring-search"
zplug "mafredri/zsh-async", from:github
zplug "agkozak/zsh-z"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
# Load plugins - you may need to run this manually
zplug load 

plugins=( 
    zsh-autosuggestions
)


#Aliases 
alias d='NODE_OPTIONS=--max_old_space_size=32768 netlify dev'
alias t='yarn run test'
alias s='yarn run start'
alias c='code .'
alias sa='nx serve app'
alias generate='nx generate:dev app'

#Git
alias g='git'
alias gst='git status'
alias gp='git push origin'
alias ga="gst && git add"
alias gb='git branch'
alias gbD='git branch --delete --force'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gcmsg='git commit --message'
alias gcsmg='git commit --message'
alias gmcsg='git commit --message'
alias gcmgs='git commit --message'
alias gf='git fetch'
alias gl='git pull'
alias grbi='git rebase --interactive'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias resetgit='git reset --hard HEAD~1'
alias gitreset='git reset --hard HEAD~1'

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Theming
autoload -U promptinit; promptinit
prompt pure
zstyle ':completion:*' menu select

# n exports
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

