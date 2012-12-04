export PATH=/usr/local/maven-2.0.9/bin:/opt/local/bin:/opt/local/sbin:$PATH

#プロンプト
#PS1='\033k\033\\[\u@\h \W]\$ '
PS1='[\u@\h \W]\\$ '

#エイリアス
alias sudo='sudo '
alias ll='ls -l'
alias vi=/opt/local/bin/vim
alias fcd='source /Users/suusuke/unix/bin/fcd.sh'
alias pear=/Library/Php/Pear/bin/pear
alias php4=/usr/local/lib/php-4.4.9/bin/php
alias pear4=/usr/local/lib/php-4.4.9/bin/pear
alias phpbrew=~/phpbrew/phpbrew

#bash_historyの共有
function share_history { # 以下の内容を関数として定義
    history -a # .bash_historyに前回コマンドを1行追記
    history -c # 端末ローカルの履歴を一旦消去
    history -r # .bash_historyから履歴を読み込み直す
}

#Bash がプロンプトを出す前に普通の Bash のコマンドとして実行する
#PROMPT_COMMAND='echo -ne "\033]0;$(whoami)@$(hostname):$(pwd)\007"'
PROMPT_COMMAND='share_history' # 上記関数をプロンプト毎に自動実施
shopt -u histappend # .bash_history追記モードは不要なのでOFFに
export HISTSIZE=9999 # 履歴のMAX保存数を指定

#MacVimの設定 20110704 VimからMacVimに以降
#export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
#alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -g "$@"'
#alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -g "$@"'


echo bashrc
