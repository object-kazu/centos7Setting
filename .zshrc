########## PATH #################################################
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/bin:$PATH

#LANG
export LANG=ja_JP.UTF-8

#RUST
export PATH=/Users/shimizukazuyuki/.cargo/bin/racer:$PATH
#export RUST_SRC_PATH=/Users/shimizukazuyuki/src/rust/src
export RUST_SRC_PATH=/Users/shimizukazuyuki/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src
source $HOME/.cargo/env

#LLVM
export PATH=/usr/local/opt/llvm/bin:$PATH

#shell scripts PATH
export PATH=~/Dropbox/ShellScripts:$PATH
export PATH=~/Dropbox/ShellScripts/todo_git_dev:$PATH
export PATH=~/Dropbox/CommonSetting/bm-emacs-zsh/bookmark-emacs-zsh/:$PATH

#android PATH
export PATH=/Applications/androidDev/sdk/tools:$PATH
export PATH=/Applications/androidDev/sdk/platform-tools:$PATH

#emacsc(1)
export PATH=/usr/local/Cellar/emacs-mac/emacs-25.2-z-mac-6.4/bin:$PATH

#npm -> nodebrew
#"export PATH=/usr/local/lib/node_modules:$PATH

#npm PATH
#export PATH=/usr/local/lib/node_modules:$PATH

#nodebrew
#export PATH=$HOME/.nodebrew/current/bin:$PATH

#git-diff
export PATH=/usr/local/share/git-core/contrib/diff-highlight:$PATH

#goLang
GOPATH="$HOME/go"
export GOPATH

# for IT-colleage text pdf 
export PATH=~/ActiveProject/IT_Colleage:$PATH


################ Langs  ##########################################

#tmux 
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux




######### zload    ###############################
# zsh で自分で補完関数を作るとき、
# 作った関数を直してもう一回読み込んで確認して、
# っていう手順がけっこうめんどくさい。
# それを簡単にしたくて、前にさっと再読み込みできるようにする関数を作った。
fpath=(~/.zsh/functions/zload(N-/) $fpath)
autoload -Uz zload


######### 補完 ###################################
typeset -U fpath
fpath=(~/.zsh/functions/ $fpath)
autoload -U compinit
compinit



# cd-bookmard
fpath=($HOME/.zsh/functions/cd-bookmark(N-/) $fpath) # autoload -U よりも前に記述する必要あり
autoload -Uz cd-bookmark

# bookmark-emacs-zsh
autoload -Uz bm-e-z
alias bm='bm-e-z'
alias bml='bm-e-z -l'
alias bma='bm-e-z -a'
alias bmu='bm-e-z -u'

# python
alias py='python'
alias jn='jupyter notebook'

# rust alias
alias cg='cargo'
alias cgr='cargo run'
alias cgb='cargo build'
alias cgc='cargo check'
alias cgt='cargo test'
alias rsc='rustc'

###### prompt ################################
autoload colors
colors

PROMPT="%F{white} %~ %f
%F{green}[%n](zsh)%f%F{red}%# >%f "

PROMPT2='[%n]> '
RPROMPT='`rprompt-git-current-branch`'

###### history ###############################
HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000

setopt hist_ignore_dups
setopt share_history
setopt hist_expand

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 

# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
setopt share_history
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# ヒストリを呼び出してから実行する間に一旦編集可能
#setopt hist_verify
# 余分な空白は詰めて記録
setopt hist_reduce_blanks  
# 古いコマンドと同じものは無視 
setopt hist_save_no_dups
# historyコマンドは履歴に登録しない
setopt hist_no_store
# 補完時にヒストリを自動的に展開         
setopt hist_expand
# 履歴をインクリメンタルに追加
setopt inc_append_history

#auto-cd
setopt auto_cd

#auto-pushd
setopt auto_pushd

#訂正
setopt correct

#リストをコンパクトに
setopt list_packed

#beep音をストップ
setopt nolistbeep

#key bind emacs
bindkey -e

######### alias ###############################

# colordiff
alias diff='colordiff'

# emacs ripper-tags 
alias ripper='ripper-tags -e -R -f TAGS'

# ghostscript
# IT_Colleage のPDFをまとめるコマンド
alias gspdf='gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -sOutputFile=out.pdf'

alias ls='ls -axFG'
alias lls='ls'

#move
alias mdesktop='cd ~/Desktop'
alias mxcode='cd ~/Dropbox/xcodeProject/'
alias mmobile='cd /Volumes/shimizukazuyuki/mobile_ks_idea/'
alias mth='cd ~/Dropbox/momijiMac_Wp_Theme'
alias mdr='cd ~/Dropbox/'
alias mstyle='/Applications/wordpress-3.0.5-0/apps/wordpress/htdocs/wp-content/themes/ksstyle2/'
alias mtd='~/Dropbox/ShellScripts/todo_git/'
alias mbit='cd ~/BitTorrent\ Sync/'

#git
alias gitx='open -a /Applications/GitX.app/'
alias gits='git status'
alias gitc='git checkout'
alias gitb='git branch'
alias gitd='git diff'
alias gita='sh ~/Dropbox/ShellScripts/todo_git_dev/git_com.sh'
alias gitmt='git mergetool -y'
alias gitlf='git log --grep'
alias gitl='git log -p'
alias gtree='git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(magenta reverse)%d%Creset %s"'


#todotxt
alias td='todo.sh'
alias tda='todo.sh add'
alias tdl='todo.sh ls'
alias tdr='todo.sh replace'
alias tdone='todo.sh do'
alias tdp='todo.sh projectview'

#todo-git
alias tg='todo_git.sh'
alias tge='todo_git.sh -e'
alias tgl='todo_git.sh -l'
alias tgs='todo_git.sh -s'
alias tgf='todo_git.sh -f'
alias tgr='todo_git.sh -r'
alias tgo='todo_git.sh -o'
alias tgd='todo_git.sh -d'
alias tgx='todo_git.sh -x'
alias tgp='todo_git.sh -p'

## now testing  ##
alias tgb='todo_git.sh -b'
alias tgm='todo_git.sh -m'
alias tgu='todo_git.sh -u'

#haiku
alias hir='haikuImage.sh -r'
alias hil='haikuImage.sh -l'
alias hih='haikuImage.sh -h'

#haiku photo 2L size
#h2l file.jpg "HAIKU"
alias h2l='haikuPhoto_2L.sh'

#perl
alias pbrew='perlbrew'
alias cpm='cpanm'
alias plc='perl -cw'
alias pl='perl'

#global
alias gtg='gtags --gtagslabel=pygments --debug'

#icons
alias icon='icons.sh'

#jazzy
alias jazzy='jazzy --swift-version'

#cordova
alias crd='cordova'

#jenkins
alias jenkins='java -jar /usr/local/opt/jenkins/libexec/jenkins.war'

#rails and ruby
alias ry='ruby'
alias ra='rails'
alias bx='bundle exec'
alias bb='ruby -rbyebug'

#my ruby script
alias coloname='ruby /Users/shimizukazuyuki/ActiveProject/color-picker/rename.rb'


#javberwock専用コマンド
alias ksyard='yardoc lib/**/*.rb -o ~/ActiveProject/JabberWockProjects/JabverwockRuby/yardocuments'


# 以下の設定は.zprofileに移動した
#export PATH=~/.rbenv/shims:$PATH
#eval "$(rbenv init - zsh)"
#export PATH=/usr/local/sbin:$PATH

#vagrant
alias va='vagrant'

#docker
alias dc='docker'
alias dcp='docker ps -a'

#emacsclient
export EDITOR=emacsclient
export VISUAL=emacsclient
alias e='/Applications/Emacs25.3.app/Contents/MacOS/bin/emacsclient'
alias emacsclient='/Applications/Emacs25.3.app/Contents/MacOS/bin/emacsclient -n'


#xcode
alias swift='xcrun swift'
alias swiftc="xcrun swiftc -sdk $SDKROOT"


#zsh git
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
   psvar=()
   LANG=en_US.UTF-8 vcs_info
   [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}



#ZshでGitのカレントブランチを右プロンプトに表示。
#コミット済みのきれいな状態だと緑色、未コミットの編集がある場合は赤色で表示される。
setopt prompt_subst
autoload -Uz VCS_INFO_get_data_git; VCS_INFO_get_data_git 2> /dev/null

function rprompt-git-current-branch {
 local name st color gitdir action
 if [[ "$PWD" =~ '/¥.git(/.*)?$' ]]; then
   return
 fi
 name=$(basename "`git symbolic-ref HEAD 2> /dev/null`")
 if [[ -z $name ]]; then
   return
 fi

 gitdir=`git rev-parse --git-dir 2> /dev/null`
 action=`VCS_INFO_git_getaction "$gitdir"` && action="($action)"

 st=`git status 2> /dev/null`
 if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
   color=%F{green}
 elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
   color=%F{yellow}
 elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
   color=%B%F{red}
 else
    color=%F{red}
 fi
 echo "$color$name$action%f%b "
}


#perlbrew
source $HOME/perl5/perlbrew/etc/bashrc

#ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


#cd をうったら自動的にｌｓを打つ
function cd(){
    builtin cd $@ && ls;
}


#"エンターだけで ls と git status 表示するようにしてある"
function do_enter() {
   if [ -n "$BUFFER" ]; then
       zle accept-line
       return 0
   fi
   echo
   ls
   # ↓おすすめ
   # ls_abbrev
   if [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" = 'true' ]; then
       echo
       echo -e "\e[0;33m--- git status ---\e[0m"
       git status -sb
   fi
   zle reset-prompt
   return 0
}
zle -N do_enter
bindkey '^m' do_enter


########zsh補完関数Testing　################

# セパレータを設定する
zstyle ':completion:*' list-separator '-->'
zstyle ':completion:*:manuals' separate-sections true

bindkey "^I" menu-complete   # 展開する前に補完候補を出させる(Ctrl-iで補完するようにする)

export LSCOLORS=bxFxCxdxxxxxxxxxxxxxxx

# ファイル補完候補に色を付ける
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}



######## wzshのchpwd_recent_dirsでよく行くディレクトリに移動する    ################

# AUTO_PUSHD によって自動的に積まれたディレクトリスタックの移動はカレントのシェルにおいて有用ですが、
#ログアウト後、あるいは別のセッションでは利用できません。
# そのためよく移動するディレクトリについては $cdpath やディレクトリのエイリアスに設定、
#あるいは移動するための関数を定義することも多いと思います。
# ここでは zsh バージョン 4.3.11 から標準モジュールとして使えるようになった
#chpwd_recent_dirs について紹介します。
# 以下の設定を例に説明します。カレントディレクトリを変更したときに呼ばれる特殊関数
#chpwd_functions に chpwd_recent_dirs を呼ぶようにしています。
#詳しい使い方は zshcontrib(1) の REMEMBERING RECENT DIRECTORIES を参照してください。

if [[ -n $(echo ${^fpath}/chpwd_recent_dirs(N)) && -n $(echo ${^fpath}/cdr(N)) ]]; then
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
 add-zsh-hook chpwd chpwd_recent_dirs
 zstyle ':completion:*:*:cdr:*:*' menu selection
 zstyle ':completion:*' recent-dirs-insert both
 zstyle ':chpwd:*' recent-dirs-max 500
 zstyle ':chpwd:*' recent-dirs-default true
 zstyle ':chpwd:*' recent-dirs-file "${XDG_CACHE_HOME:-$HOME/.cache}/shell/chpwd-recent-dirs"
 zstyle ':chpwd:*' recent-dirs-pushd true
fi


#zaw
# source ~/.zsh/zaw/zaw.zsh
# zstyle ':filter-select' case-insensitive yes

# bindkey "^@" zaw-cdr
# bindkey "^X^R" zaw-history
# bindkey "^X^F" zaw-git-files
# bindkey "^X^B" zaw-git-branches
# bindkey "^X^P" zaw-process


source ~/.zsh.d/z.sh
#peco
function peco-select-history() {
   local tac
   if which tac > /dev/null; then
       tac="tac"
   else
       tac="tail -r"
   fi
   BUFFER=$(\history -n 1 | \
       eval $tac | \
       peco --query "$LBUFFER")
   CURSOR=$#BUFFER
   zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
source ~/.zsh.d/z.sh


function peco-z-search
{
 which peco z > /dev/null
 if [ $? -ne 0 ]; then
   echo "Please install peco and z"
   return 1
 fi
 local res=$(z | sort -rn | cut -c 12- | peco)
 if [ -n "$res" ]; then
   BUFFER+="cd $res"
   zle accept-line
 else
   return 1
 fi
}
zle -N peco-z-search
bindkey '^f' peco-z-search
export PATH="/usr/local/opt/texinfo/bin:$PATH"

export LUA_PATH='/usr/local/share/lua/5.2/?.lua;/usr/local/share/lua/5.2/?/init.lua;/usr/local/Cellar/lua/5.2.4_4/libexec/share/lua/5.2/?.lua;/usr/local/lib/lua/5.2/?.lua;/usr/local/lib/lua/5.2/?/init.lua;./?.lua;~/.luarocks/share/lua/5.2/?.lua'
export LUA_CPATH='/usr/local/lib/lua/5.2/?.so;/usr/local/lib/lua/5.2/loadall.so;./?.so'


