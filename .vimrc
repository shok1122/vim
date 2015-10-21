" ======================================
"  pathogen
" ======================================
call pathogen#infect()   " ~/.vim/bundle配下のプラグインを読み込む
call pathogen#helptags() " ~/.vim/bundle配下のプラグインのヘルプを読み込む

"filetype off
"filetype plugin indent on

" ======================================
"  appearance
" ======================================
" タブ関連
set tabstop=4
set shiftwidth=4
" 制御文字表示
set list
set listchars=eol:$,tab:>\ 
" 行番号表示
set number
" シンタックス表示
syntax on
set autochdir

" ======================================
"  prefix: s
"   ウィンドウ操作
" ======================================
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

" ======================================
"  prefix: ,
"   unite関連
" ======================================
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_file_mru_limit=200
nnoremap , <nop>
nnoremap <silent> ,b :<C-u>Unite buffer<CR>
nnoremap <silent> ,ff :<C-u>Unite file<CR>
nnoremap <silent> ,fr :<C-u>Unite file_rec<CR>
nnoremap <silent> ,r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,u :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> ,y :<C-u>Unite history/yank<CR>
