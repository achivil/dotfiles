set nocompatible              " be iMproved, required
filetype off                  " required

"syntax on
syntax enable
let mapleader = ","
let g:global_variable_for_plugin = 1
set encoding=utf-8
set noerrorbells
set novisualbell
set t_vb=
set backspace=indent,eol,start
set background=dark
set t_Co=256
set mouse=a
set ttymouse=xterm2
" autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
" Plug 'bling/vim-airline'
"Plug 'flazz/vim-colorschemes'
" Plug 'davidhalter/jedi-vim.git'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jistr/vim-nerdtree-tabs'
" Plug 'easymotion/vim-easymotion'
" Plug 'fholgado/minibufexpl.vim'
Plug 'ap/vim-buftabline'
" Plug 'mattn/emmet-vim'
" Plug 'groenewege/vim-less'
Plug 'tpope/vim-fugitive'
" Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'Valloric/YouCompleteMe'
"Plug 'rdnetto/YCM-Generator'
" Plug 'marijnh/tern_for_vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'Shougo/neocomplcache.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"call vundle#end()
call plug#end()

filetype off
filetype on
filetype plugin indent on

" colors
let g:solarized_termcolors=256
colors solarized
let g:solarized_termtrans=1
let g:solarized_visibility='normal'
if has('gui_running')
    set background=light
else
    set background=dark
endif

set nu
set cursorline 
hi CursorLine term=bold cterm=bold guibg=Grey40

" NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_disabled_filetypes=['html', 'tpl']
let g:syntastic_html_checkers=['']

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" indent_guides
set softtabstop=4
set ts=4 sw=2 et
set smarttab
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_default_mapping=0
let g:indent_guides_exclude_filetypes=['help', 'nerdtree', 'startify', 'markdown']
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
" set autoindent

" buftabline
let g:buftabline_numbers = 2
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)

" YouCompleteMe
" let g:ycm_python_interpreter_path = ''
" let g:ycm_python_sys_path = []
" let g:ycm_extra_conf_vim_data = [
"   \  'g:ycm_python_interpreter_path',
"   \  'g:ycm_python_sys_path'
"   \]
" let g:ycm_global_ycm_extra_conf = '~/.global_extra_conf.py'
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

