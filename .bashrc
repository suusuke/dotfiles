export PATH=/usr/local/maven-2.0.9/bin:/opt/local/bin:/opt/local/sbin:$PATH

#�ץ��ץ�
#PS1='\033k\033\\[\u@\h \W]\$ '
PS1='[\u@\h \W]\\$ '

#�����ꥢ��
alias sudo='sudo '
alias ll='ls -l'
alias vi=/opt/local/bin/vim
alias fcd='source /Users/suusuke/unix/bin/fcd.sh'
alias pear=/Library/Php/Pear/bin/pear
alias php4=/usr/local/lib/php-4.4.9/bin/php
alias pear4=/usr/local/lib/php-4.4.9/bin/pear
alias phpbrew=~/phpbrew/phpbrew

#bash_history�ζ�ͭ
function share_history { # �ʲ������Ƥ�ؿ��Ȥ������
    history -a # .bash_history�����󥳥ޥ�ɤ�1���ɵ�
    history -c # ü���������������ö�õ�
    history -r # .bash_history����������ɤ߹���ľ��
}

#Bash ���ץ��ץȤ�Ф��������̤� Bash �Υ��ޥ�ɤȤ��Ƽ¹Ԥ���
#PROMPT_COMMAND='echo -ne "\033]0;$(whoami)@$(hostname):$(pwd)\007"'
PROMPT_COMMAND='share_history' # �嵭�ؿ���ץ��ץ���˼�ư�»�
shopt -u histappend # .bash_history�ɵ��⡼�ɤ����פʤΤ�OFF��
export HISTSIZE=9999 # �����MAX��¸�������

#MacVim������ 20110704 Vim����MacVim�˰ʹ�
#export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
#alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -g "$@"'
#alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -g "$@"'


echo bashrc
