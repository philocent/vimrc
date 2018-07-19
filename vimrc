set nocompatible "오리지날 VI와 호환하지 않음"
set number "라인 보여주기"
set hlsearch "highlight search"
set ignorecase "검색 시 대문자, 소문자 구별 안함" set autoindent "자동 들여쓰기"
set cindent "C 프로그래밍용 자동 들여쓰기"
set smartindent "스마트 indent"
set nobackup "백업파일 만들지 않음"
set incsearch "점진적 검색"
set nocursorcolumn "Highlight current column"
set nocursorline "Highlight current line"

" Tab 길이 모두 4
set tabstop=4
set softtabstop=4
set shiftwidth=4

" tab 대신에 space
set expandtab
" Makefile 같은 경우 tab이 문법이므로 해제
autocmd FileType make setlocal noexpandtab

" Leader key
let mapleader = ","

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'tfnico/vim-gradle'
Plugin 'Raimondi/delimitmate'
Plugin 'shougo/denite.nvim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'klen/python-mode'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'benmills/vimux'

call vundle#end()
filetype plugin indent on

" vim-colors-solarized
syntax on 

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['pom.xml', 'build.gradle']
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
set t_Co=256
let g:airline_theme='luna'
set laststatus=2 " turn on bottom bar

" vim-smooth-scroll
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 5)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 5)<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 3)<CR>

" buffer manage
nmap <leader>T :enew<cr>

" delimimate
let delimitMate_expand_cr = 1

" tmux-navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-/> :TmuxNavigatePrevious<cr>

" python-mode

" vimux
map <Leader>vt :VimuxPromptCommand<CR>
