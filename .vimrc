"vi互換をoff
set nocompatible

"起動時のメッセージを消す
set shortmess+=I

"文字コード(デフォルトがenc、読み込みがfencsから読み込んで全ての変換に失敗したらfencで読み込む)
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,iso-2021-jp,euc-jp,cp932
set fileformats=mac,unix,dos

"カラースキーマ
"colorscheme darkblue

"カーソル行のカラーを設定
"set cursorline

"ステータスラインを常に表示
set laststatus=2

"ステータスライン文字コード表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l，%c%V%8P

"補完候補を表示する
set wildmenu

"シンタックスハイライトを有効にする
syntax on

"入力中のコマンドをステータスに表示する
set showcmd

"検索結果文字列のハイライトを有効にする
set hlsearch

"行番号表示
set number

"バックスペースでインデントや改行を削除できるようにする
set backspace=2

"バックアップ、スワップファイルディレクトリ指定
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"画面サイズ設定
"set columns=120
"set lines=40

"改行時のコメントアウト自動継続を無効化
"set formatoptions-=ro
autocmd FileType * set formatoptions-=ro

"screenでvim使うための設定
" if &term =~ "screen"
if &term !~ "xterm-color"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "^[k[`basename %`]^[??"' | endif
  autocmd VimLeave * silent! exe '!echo -n "^[k`dirs`^[??"'
endif

"hatena.vimの設定
set runtimepath+=~/.vim/hatena
runtime plugin/hatena.vim
let g:hatena_user='suusuke'

"キーマップの設定(Leaderはバックスラッシュ(\))
"n:ノーマル v:ビジュアル o:演算待ち i:挿入 c:コマンドライン
"noremap:ノーマル、ビジュアル、演算待ち noremap!:挿入、コマンドライン
inoremap <Leader>a <Home>
inoremap <C-e> <End>
inoremap <C-d> <Del>
 
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

inoremap <Leader>date <C-R>=strftime('%Y/%m/%d (%a)')<CR>
inoremap <Leader>time <C-R>=strftime('%H:%M')<CR>
inoremap <Leader>w3cd <C-R>=strftime('%Y-%m-%dT%H:%M:%S+09:00')<CR>

nnoremap <silent> <C-x>1 :only<CR>
nnoremap <silent> <C-x>2 :sp<CR>
nnoremap <silent> <C-x>3 :vsp<CR>

inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap <> <><LEFT>

"imap <C-;> <ESC>


"PHP
nmap <silent> <F4>
    \ :!/usr/local/bin/ctags -f %:p:h/tags
    \ --langmap="php:+.inc"
    \ -h ".php.inc" -R --totals=yes
    \ --tag-relative=yes --PHP-kinds=+cf-v %:p:h<CR>
set tags=./tags,tags

