export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git", from:oh-my-zsh
zplug "rupa/z"
zplug "mafredri/zsh-async", from:github
zplug "djui/alias-tips"
zplug "agkozak/zsh-z"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load 

plugins=( 
    zsh-autosuggestions
)

#Aliases 
alias d='nx serve www'
alias t='npm run test'
alias s='npm run start'
alias c='code .'
alias ios='npm run ios'
alias device='npx expo run:ios --device'
alias sa='nx serve app'
alias generate='nx generate:dev app'
alias assume='g update-index --assume-unchanged apps/www/pages/_app.tsx'
alias assumeconfig='g update-index --assume-unchanged apps/www/next.config.js'
alias noassume='g update-index --no-assume-unchanged apps/www/pages/_app.tsx'
alias noassumeconfig='g update-index --no-assume-unchanged apps/www/next.config.js'
alias resetgit='git reset --hard HEAD~1'

bindkey -M main '^[OA' history-substring-search-up
bindkey -M main '^[OB' history-substring-search-down
bindkey -M main '^[[A' history-substring-search-up
bindkey -M main '^[[B' history-substring-search-up

autoload -U promptinit; promptinit
prompt pure
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/Home"
