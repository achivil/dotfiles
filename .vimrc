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
" autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'davidhalter/jedi-vim.git'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'easymotion/vim-easymotion'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'mattn/emmet-vim'
Plugin 'groenewege/vim-less'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
Plugin 'marijnh/tern_for_vim'
Plugin 'jelera/vim-javascript-syntax'

call vundle#end()

filetype off
filetype on
filetype plugin indent on

" vim-airline
let g:Powerline_symbols = 'fancy'
" let g:airline_left_sep='>'
" let g:airline_right_sep='<'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts=1
let g:airline_exclude_filenames = [] " see source for current list
let g:airline_exclude_filetypes = [] " see source for current list
let g:airline_exclude_preview = 0
let g:airline#extensions#syntastic#enabled = 1
" let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" colors
" colorscheme material-theme
" colorscheme badwolf
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
" set relativenumber
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

" Jedi
let g:jedi#auto_initialization = 1
let g:jedi#popup_select_first = 0  
let g:jedi#popup_on_dot = 0  
let g:jedi#goto_command = "<leader>g"  
let g:jedi#goto_definitions_command= "<leader>d"  
let g:jedi#rename_command = "<leader>r"  
let g:jedi#usages_command= "<leader>n"  
let g:jedi#completions_command= "<C-Space>"

" Autoindent
set expandtab
set softtabstop=4
set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case

set ts=4 sw=4 et
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_default_mapping=0
let g:indent_guides_exclude_filetypes=['help', 'nerdtree', 'startify', 'markdown']
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" vim-less

" neocomplcache
" let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
" let g:neocomplcache_min_syntax_length = 4
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
