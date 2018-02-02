set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
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
set clipboard=unnamed
let python_highlight_all=1

" 基于缩进或语法进行代码折叠
set foldmethod=indent
" set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'"

Plug 'Valloric/YouCompleteMe'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'easymotion/vim-easymotion'
Plug 'ap/vim-buftabline'
Plug 'Shougo/neocomplcache.vim'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'marijnh/tern_for_vim'

Plug 'jdkanani/vim-material-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

call plug#end()

" filetype off
filetype on
filetype plugin indent on

" vim-airline
let g:Powerline_symbols = 'fancy'
let g:airline_left_sep='>'
let g:airline_right_sep='<'
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
" solarized theme
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
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_disabled_filetypes=['html', 'tpl']
let g:syntastic_html_checkers=['']
let g:syntastic_mode_map={"mode": "passive",}

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
nmap <leader>0 <Plug>BufTabLine.Go(10)

" neocomplcache
" let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
" let g:neocomplcache_min_syntax_length = 4
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Tagbar
nmap <F8> :TagbarToggle<CR>

