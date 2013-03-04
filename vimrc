set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

 " let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" original repos on github
Bundle 'sgur/ctrlp-extensions'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'tomasr/molokai'
Bundle 'ivanov/vim-ipython'
" locally installed Bundles
Bundle 'nerdtree-ack'
Bundle 'Tagbar'
Bundle 'delimitMate.vim'
Bundle 'Gundo'
Bundle 'repeat.vim'
Bundle 'The-NERD-Commenter'
Bundle 'rainbow_parentheses.vim'
Bundle 'SuperTab-continued.'
Bundle 'YankRing.vim'
Bundle 'ctrlp.vim'
"Bundle 'minibufexpl.vim'
Bundle 'surround.vim'
Bundle 'unimpaired.vim'
Bundle 'Python-mode-klen'
Bundle 'vim-ipython'
Bundle 'UltiSnips'
Bundle 'vim-pandoc'
Bundle 'Solarized'
Bundle '/.local/lib/python2.7/site-packages/powerline/bindings/vim/'

" Done with the Vundle'ing:
filetype plugin indent on

" And now to all of my old stuff:
set encoding=utf-8
set number          "Turning line numbers on
set ruler
set lines=50 columns=84
set hidden          "No need to save buffers before opening a new one.
set ignorecase
set smartcase       "Ignore case in search when term all lower case, else not.
set gdefault        " Substitution everywhere in a line!
set nobackup        "Don't save backup files. We have git nowadays.
set noswapfile      "Don't save swap files (Do I want this?)
set guioptions-=T   "By default hide toolbar in gvim: less clutter, more space.       
set guioptions-=r   "By default hide right scrollbar in gvim
set guioptions-=L   "By default hide left scrollbar in gvim
set autoindent      "Self explanatory
set linebreak       "Break lines above 80 characters wide
set textwidth=80
set hlsearch        "Highlight search matches
set incsearch
set mouse=a         "Better mouse interaction in both GUI and terminal
set guifont=DejaVuSansMono\ 9 
"set guifont=DejaVuSansMonoForPowerline:h12 
filetype plugin on      "Smart filetype recognition etc.
filetype indent on
filetype plugin indent on	
set grepprg=grep\ -nH\ $*
set t_Co=256
set ofu=syntaxcomplete#Complete  "Autocomplete options
set completeopt+=longest
set scrolloff=6  "Show 10 lines above/below cursor except at beg/end of files
set showtabline=1
set encoding=utf-8

"""============================================================================
"     Pymode settings: 
"""============================================================================
let g:pymode_lint_write=0
let g:pymode_lint_signs=0
nnoremap <leader>plw :PyLintWindowToggle<CR>
nnoremap <leader>plt :PyLintToggle<CR>
"""============================================================================
"    DISABLING ARROW KEYS IN VIM, GODSPEED!
"""============================================================================
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>

nnoremap  <Up>     <NOP>
nnoremap  <Down>   <NOP>
nnoremap  <Left>   <NOP>
nnoremap  <Right>  <NOP>

vnoremap  <Up>     <NOP>
vnoremap  <Down>   <NOP>
vnoremap  <Left>   <NOP>
vnoremap  <Right>  <NOP>

""""============================================================================
""     Rope completion in Vim 
""     Disable to begin with so I can tell the difference.
""""============================================================================
"let pymode_rope_vim_completion = 1
"let pymode_rope_extended_complete = 1
"let g:pymode_rope_autoimport_modules = ["pandas.*","matplotlib.pyplot","scipy.*", "os.*"]
""imap <C-Space> <C-R>=RopeCodeAssistInsertMode()<CR>

"""============================================================================
" Option for persistent undo, new to Vim 7.3
"""============================================================================
set undodir=./undo/
set undofile
set undolevels=1000
set undoreload=10000

"""============================================================================
""" TagBar options:
"""============================================================================
" Open Tagbar, return cursor to main window
autocmd VimEnter * nested :call tagbar#autoopen(1)
" Auto open tagbar if opening a supported file
autocmd FileType * nested :call tagbar#autoopen(0)
let g:tagbar_width = 35
let g:tagbar_expand = 1  "Expand the window to accomodate tagbar
let g:tagbar_foldlevel = 0  "Start tagbar with folds collapsed

"""============================================================================
" Option for (La)TeX plugin 
"""============================================================================
let g:tex_flavor                    = 'latex'
let g:Tex_ViewRule_pdf              = 'okular'
let g:Tex_CompileRule_pdf           = 'pdflatex --interaction=nonstopmode $*'
let g:solarized_termcolors          = 256 "But I don't really use solarized...

"""============================================================================
"     YankRing settings 
"""============================================================================
" let g:yankring_replace_n_pkey = '<m-p>'
" let g:yankring_replace_n_nkey = '<m-n>'

"""============================================================================
"CtrlP: Fuzzy search in vim.
"""============================================================================
let g:ctrlp_map                     = '<C-Space>'
let g:ctrlp_cmd                     = 'CtrlPMixed'
let g:ctrlp_extensions              = ['changes', 'buffertag', 'line']
"let g:ctrlp_extensions              = ['tag', 'buffertag', 'quickfix',
"			              \'dir', 'rtscript', 'undo',
"				      \'line', 'changes', 'mixed',
"				      \'bookmarkdir']

"""============================================================================
"     Settings for powerline (python-based) 
"""============================================================================
"python from powerline.bindings.vim import source_plugin; source_plugin()
set rtp+=/home/thriveth/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2  " Always enable statusline.
"set noshowmode  " disable the automatic '-- INSERT --' etc text.

"""============================================================================
"  Misc. mappings:
"""============================================================================
" change the mapleader from \ to ,
let mapleader=","
" Quickly edit/reload the vimrc file (from nvie.com/posts/how-i-boosted-my-vim/
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Map <leader>ch to make comment-headline.
nnoremap <leader>ch 3i#<ESC>76A=<ESC>yy1o#<ESC>p1k6A<Space><ESC>i
" Map <leader>W to strip trailing whitespace (steve losh)
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" Map <leader> N to clear search hightlighting.
nnoremap <leader>n :noh<CR>
"Map key to toggle line numbers, tagbar, gundo  and NERDTree plugins:
nnoremap <F2>   :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F5>   :GundoToggle<CR>
nmap     <S-F6>   :MiniBufExplorer<CR>
nmap     <F6> <leader>mbt
nmap     <F8>   :TagbarToggle<CR><C-w>=
nmap     <F9>   :NERDTreeToggle<CR>

" Toggle the list option:
nnoremap <leader>l :set list! list?<cr>

" Easily set and unset cursorline and cursorcolumn.
map <leader>cc :set cursorcolumn!<CR>
map <leader>cl :set cursorline!<CR>

" Remap Alt-k and Alt-j to move screen contents down and up while keeping the
" cursor on the middle line:
nnoremap <D-j> jzz
nnoremap <D-k> kzz
"
" Map sort function to key:
vnoremap <leader>s :sort<CR>
" Better movement:
vnoremap < <gv
vnoremap > >gv
" Use unimpaired to "bubble" text up and down:
" Bubble single lines
nmap <D-Up> [e
nmap <D-Down> ]e
" Bubble multiple lines
vmap <D-Up> [egv
vmap <D-Down> ]egv

" Mapping for using YankRing
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

" Shortcut to open a vertical split and enter it.
nnoremap <leader>w <C-w>v<C-w>l

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

colorscheme Twilight
set colorcolumn=80 "Marker for 80th column
