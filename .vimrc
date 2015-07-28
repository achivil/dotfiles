set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
let mapleader = ","
let g:global_variable_for_plugin = 1
set encoding=utf-8
set noerrorbells
set novisualbell
set t_vb=
set background=dark
set t_Co=256
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

call vundle#end()

filetype plugin indent on
" vim-airline
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
" let g:airline_theme=luna
let g:airline_powerline_fonts=1
let g:airline_exclude_filenames = [] " see source for current list
let g:airline_exclude_filetypes = [] " see source for current list
let g:airline_exclude_preview = 0
let w:airline_disabled = 0
set laststatus=2

" colors
colorscheme badwolf
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

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Jedi
let g:jedi#auto_initialization = 1
let g:jedi#popup_select_first = 0  
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

" miniBufExpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
