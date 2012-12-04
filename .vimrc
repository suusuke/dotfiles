" ----------------------
" Vundle 設定
" ----------------------
set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
" ======================
" fugitive.vim → git
" surround.vim
" mru.vim → 開いたファイルの履歴管理 :MRUコマンドで使用
" The-NERD-tree → tree表示
" The-NERD-Commenter → コメント
" EasyMotion → カーソルの移動を便利にする <Space><Space> k etc...
" L9
" FuzzyFinder
" AutoClose
" ZenCoding.vim
" ======================
Bundle 'fugitive.vim'
Bundle 'surround.vim'
Bundle 'mru.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'EasyMotion'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'AutoClose'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/vimproc'
Bundle 'ZenCoding.vim'

filetype plugin indent on " required!



" ----------------------
" SETTING
" ----------------------
" カラースキーマ
colorscheme obsidian2
" 起動メッセージを消す
set shortmess+=I
" 検索結果をハイライト表示
set hlsearch
"カーソル行の強調表示
set cursorline
" IMを無効化
set imdisable
" 大文字/小文字を区別しない
set ignorecase
" 検索時に大文字を含んでいたら大文字/小文字を区別
set smartcase
" 新しい行のインデントを現在行と同じにする
set autoindent
" タブ幅
set softtabstop=2
" タブの代わりに空白文字を挿入する
set expandtab
" タブを表示するときの幅
set tabstop=2
" タブを挿入するときの幅
set shiftwidth=2
" タブの視覚化
highlight TagKey guibg=#b5d68f
match TagKey /	/
" タブ文字、行末など不可視文字を表示する
set list
" set listchars=tab:>-,extends:<,trail:-,eol:<
set listchars=tab:▸\ ,trail:･,eol:↲,extends:❯,precedes:❮
" ルーラー（右下に表示される行・列の番号）を表示する
set ruler
" 行番号を表示する
set number
" 閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" helpを日本語有線に
set helplang=ja

" ==========================
" Status Line
" ==========================
set showcmd "ステータスラインにコマンドを表示
set laststatus=2 "ステータスラインを常に表示
set statusline=[%L]\ %t\ %y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%r%m%=%c:%l/%L "ステータスラインの表示内容


" ----------------------
" Key Bind
" ----------------------
" ======================
" Mapping <jump-tag>
" -------------------------------------------------------------------------------
" コマンド       ノーマルモード 挿入モード コマンドラインモード ビジュアルモード
" map/noremap           @            -              -                  @
" nmap/nnoremap         @            -              -                  -
" imap/inoremap         -            @              -                  -
" cmap/cnoremap         -            -              @                  - 
" vmap/vnoremap         -            -              -                  @
" map!/noremap!         -            @              @                  -
" -------------------------------------------------------------------------------
noremap <C-c><C-c> <C-c>
noremap <C-c><C-e>e :edit $HOME/.vimrc<CR>
noremap <C-c><C-e>s :source $HOME/.vimrc<CR>

nnoremap <C-a> 0
nnoremap <C-e> $<CR>
nnoremap <C-f> <Right>
nnoremap <C-b> <Left>
nnoremap <C-p> <Up>
nnoremap <C-n> <Down>
nnoremap <C-u> 20<Up>
nnoremap <C-d> 20<Down>

nnoremap U :redo<CR>

inoremap <C-o> <Esc>o
inoremap <C-h> <BS>
inoremap <C-a> <Esc>0i
inoremap <C-e> <Esc>$<CR>i
inoremap <C-p> <Esc><Up>a
inoremap <C-n> <Esc><Down>a

inoremap <C-f> <Esc><Right>a
inoremap <C-b> <Esc>i

inoremap <C-d> <Esc><Right>xi


inoremap <C-u> <C-g>u<C-u>

"inoremap <C-j> <Esc>
inoremap jj <Esc>

" no use
" nnoremap p :Paste<CR>
" noremap <C-u> <C-g>u<C-u>
" noremap <C-w> <C-g>u<C-w>
" inoremap <C-w> <ESC>:DeletePreviousWord<CR>xi



" ----------------------
" plugin setting
" ----------------------

" ======================
" NERDTree
" ======================
"隠しファイルを表示する
let NERDTreeShowHidden=1
" NERDTreeを表示
nnoremap <leader>n :NERDTree<CR>

" ======================
" easymotion
" ======================
" ホームポジションに近いキーを使う
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
" マッピング
let g:EasyMotion_leader_key='<Space><Space>'
" 1 ストローク選択を優先する
let g:EasyMotion_grouping=1
" カラー設定変更
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

" ======================
" FuzzyFinder
" ======================
let g:fuf_modesDisable=['mrucmd']
let g:fuf_file_exclude='\v\~$|\.(o|exe|bak|swp|gif|jpg|png)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_mrufile_exclude='\v\~$|\.bak$|\.swp|\.howm$|\.(gif|jpg|png)$'
let g:fuf_mrufile_maxItem=10000
let g:fuf_enumeratingLimit=20
let g:fuf_keyPreview='<C-]>'
let g:fuf_previewHeight=0
let g:fuf_keyOpen='<Tab>'
let g:fuf_keyOpenTabpage='<CR>'

nmap bg :FufBuffer<CR>
nmap bG :FufFile <C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>
"nmap gb :FufFile **/<CR>
nmap br :FufMruFile<CR>
nmap bq :FufQuickfix<CR>
nmap bl :FufLine<CR>
nnoremap <silent> <C-]> :FufTag! <C-r>=expand('<cword>')<CR><CR>


" ==========================
" neocomplecache
" ==========================
" AutoComplPopを無効化
let g:acp_enableAtStartup = 0
" neocomplcacheを起動時に有効化
let g:neocomplcache_enable_at_startup = 1
" 大文字小文字を区別しない
" let g:neocomplcache_enable_smart_case = 1
" camel caseを有効化。大文字を区切りとしたワイルドカードみたいなもの
" let g:neocomplcache_enable_camel_case_completion= 1
" _の補完を有効にする
let g:neocomplcache_enable_underbar_completion= 1
" シンタックスをキャッシュするときの最小文字長
let g:neocomplcache_min_syntax_length = 3
"neocomplcacheを自動的にロックするバッファ名のパターン
let g:neocomplcache_lock_buffer_name_pattern= '\*ku\*'

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" スニペットファイルの配置場所
" let g:NeoComplCache_SnippetsDir = '~/.vim/snippets'

" 1番目の候補を自動選択
let g:neocomplcache_enable_auto_select = 1
" zencoding連携
let g:use_zen_complete_tag = 1

" ==============
" neocomplcache
" Plugin key-mappings
" ==============
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" <CR>: popupを削除
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

"ファイル名補完
inoremap <expr><C-x><C-f> neocomplcache#manual_filename_complete()

" C-jでオムニ補完
"inoremap <expr> <C-j> &filetype == 'vim' ? "\<C-x>\<C-v>\<C-p>" : "\<C-x>\<C-o>\<C-p>"
" C-kを押すと行末まで削除
"inoremap <C-k> <C-o>D
" C-nでneocomplcache補完
"inoremap <expr><C-n>  pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>
" C-pでkeyword補完
"inoremap <expr><C-p> pumvisible() ? "\<C-p>" : "\<C-p>\<C-n>"
" 補完候補が表示されている場合は確定。そうでない場合は改行
inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "<CR>"
" 補完をキャンセル
"inoremap <expr><C-e>  neocomplcache#close_popup()


" =============
" neocomplcache
" command
" =============
"Nesでスニペットを編集
command! -nargs=* Nes NeoComplCacheEditSnippets
