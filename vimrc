set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

 " let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" original repos on github
"Bundle 'sgur/ctrlp-extensions'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'tomasr/molokai'
Bundle 'sjl/badwolf'
Bundle 'noahfrederick/Hemisu'
Bundle 'bling/vim-airline'
" Bundle 'vim-markdown'
Bundle 'vim-pandoc/vim-pandoc'
" Bundle 'vim-pandoc/vim-pantondoc'
Bundle 'vim-pandoc/vim-pandoc-syntax'
" Bundle 'vim-pandoc/vim-pandoc-after'
Bundle 'lambdalisue/shareboard.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'ajacksified/vim-colors-solarized-brown'

"Bundle 'Valloric/YouCompleteMe'

" Bundle 'UltiSnips'
Bundle 'snipMate'
Bundle 'jellybeans.vim'
"Bundle 'kshenoy/vim-signature'
Bundle 'chriskempson/base16-vim'
Bundle 'davidhalter/jedi-vim'

" locally installed Bundles
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'Align'
Bundle 'Distinguished'
Bundle 'Tagbar'
Bundle 'delimitMate.vim'
Bundle 'Gundo'
Bundle 'repeat.vim'
Bundle 'The-NERD-Commenter'
Bundle 'rainbow_parentheses.vim'
Bundle 'SuperTab-continued.'
Bundle 'mimicpak'
Bundle 'ctrlp.vim'
Bundle 'surround.vim'
Bundle 'unimpaired.vim'
Bundle 'Python-mode-klen'
Bundle 'Solarized'

" Done with the Vundle'ing:
filetype plugin indent on

" And now to all of my old stuff:
set encoding=utf-8
set number          "Turning line numbers on
set ruler
set lines=50 columns=80
set hidden          "No need to save buffers before opening a new one.
set ignorecase
set smartcase       "Ignore case in search when term all lower case, else not.
set gdefault        " Substitution everywhere in a line!
set nobackup        "Don't save backup files. We have git nowadays.
set noswapfile      "Don't save swap files (Do I want this?)
set guioptions-=T   "By default hide toolbar in gvim: less clutter, more space.       
" set guioptions-=m   "By default hide toolbar in gvim: less clutter, more space.       
set guioptions-=r   "By default hide right scrollbar in gvim
set guioptions-=L   "By default hide left scrollbar in gvim

set clipboard+=unnamedplus
set autoindent      "Self explanatory
set linebreak       "Break lines above 80 characters wide
set textwidth=80
set hlsearch        "Highlight search matches
set incsearch
set mouse=a         "Better mouse interaction in both GUI and terminal
set guifont=DejaVuSansMonoforPowerLine\ 9
"set guifont=LiberationMonoForPowerline\ 10
"set guifont=DejaVuSansMono\ 10
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
let g:pymode_rope=0
"nnoremap <leader>plw :PyLintWindowToggle<CR>
"nnoremap <leader>plt :PyLintToggle<CR>
"
"""============================================================================
"     Shareboard settings 
"""============================================================================
" Use WebTeX to render math on Shareboard:
let g:shareboard_command="pandoc -Ss --toc --webtex -t html"

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
let pymode_rope_vim_completion = 1
let pymode_rope_extended_complete = 1
let g:pymode_rope_autoimport_modules = ["pandas.*","matplotlib.pyplot","scipy.*", "os.*"]
imap <M-Space> <C-R>=RopeCodeAssistInsertMode()<CR>
"
"""============================================================================
"     DistractFree settings: 
"""============================================================================
let g:distractfree_width=80
let g:distractfree_colorscheme='twilight'

"""============================================================================
" Option for persistent undo, new to Vim 7.3
"""============================================================================
set undodir=./undo/
set undofile
set undolevels=1000
set undoreload=10000

"""============================================================================
"      Markdown-Vim settings
"""============================================================================
let g:markdown_fenced_languages = ['html', 'python', 'fortran', 'sh', 'latex']
"""============================================================================
"     Pandoc MarkDown formatting options 
"""============================================================================
let g:pandoc_use_hard_wraps = 1
let g:pandoc_auto_format = 0


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
"     vim-airline settings 
"""============================================================================
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

"""============================================================================
"CtrlP: Fuzzy search in vim.
"""============================================================================
let g:ctrlp_map                     = '<C-P>'
let g:ctrlp_cmd                     = 'CtrlPMixed'
let g:ctrlp_extensions              = ['buffertag', 'line']
"let g:ctrlp_extensions              = ['tag', 'buffertag', 'quickfix',
"			              \'dir', 'rtscript', 'undo',
"				      \'line', 'changes', 'mixed',
"				      \'bookmarkdir']

"""============================================================================
"     Settings for powerline (python-based) 
"""============================================================================
"python from powerline.bindings.vim import source_plugin; source_plugin()
"set rtp+=/home/thriveth/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2  " Always enable statusline.
"set noshowmode  " disable the automatic '-- INSERT --' etc text.
"""============================================================================
"     Jedi settings: 
"""============================================================================
"autocmd FileType python setlocal completeopt-=preview

"""============================================================================
"     SuperTab stuff 
"""============================================================================
let g:SuperTabDefaultCompletionType = "<c-n>"

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
nnoremap <leader>cq 3i"<ESC>76A=<ESC>yy1o"<ESC>p1k6A<Space><ESC>i
nnoremap <leader>cp 3i%<ESC>76A=<ESC>yy1o%<ESC>p1k6A<Space><ESC>i

" Use leader keyto [S]how / [D]elete [M]arks:
nnoremap <leader>dm :delmark
nnoremap <leader>sm :marks<CR>

" Set rainbow parentheses on/off conveniently.
nnoremap <leader>rt :RainbowParenthesesToggle<CR>

" Map <leader>W to strip trailing whitespace (steve losh)
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" Map <leader> N to clear search hightlighting.
nnoremap <leader>n :noh<CR>
"Map key to toggle line numbers, tagbar, gundo  and NERDTree plugins:
nnoremap <F2>   :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F5>   :GundoToggle<CR>
nmap     <S-F6> :MBEToggle<CR>
nmap     <C-F6> :MBEToggleMRU<CR>
nmap     <F6>   :MBEFocus<CR>
nmap     <F8>   :TagbarToggle<CR><C-w>=
nmap     <F9>   :NERDTreeToggle<CR>

" Toggle the list option:
nnoremap <leader>l :set list! list?<cr>

" Easily set and unset cursorline and cursorcolumn.
map <leader>sc :set cursorcolumn!<CR>
map <leader>sl :set cursorline!<CR>

" Sort marked block alphabetically and/or numerically.
vnoremap <leader>s :sort<CR>

" Remap Alt-k and Alt-j to move screen contents down and up while keeping the
" cursor on the middle line:
nnoremap <A-j> jzz
nnoremap <A-k> kzz
"
" Map sort function to key:
vnoremap <leader>s :sort<CR>
" Better movement:
vnoremap < <gv
vnoremap > >gv
" Use unimpaired to "bubble" text up and down:
" Bubble single lines
nmap <A-Up> [e
nmap <A-Down> ]e
" Bubble multiple lines
vmap <A-Up> [egv
vmap <A-Down> ]egv

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

" Easily cycle through buffers
:nnoremap <C-Tab> :bnext<CR>
:nnoremap <C-S-Tab> :bprevious<CR>

"colorscheme Twilight
"set background=dark
"colorscheme solarized

" colorscheme base16-railscasts
colorscheme badwolf
"colorscheme birdsofparadise
hi Conceal ctermfg=26 guibg=None guifg=#0A9DFF gui='bold'
set colorcolumn=80 "Marker for 80th column
highlight colorcolumn ctermbg=233
set lines=50 columns=84
"""============================================================================
"     Misc. Autocommands etc. 
"""============================================================================
autocmd! bufwritepost .vimrc source %

"""============================================================================
""" TagBar options. Must be last to not mess up window size:
"""============================================================================
" Open Tagbar, return cursor to main window
autocmd VimEnter * nested :call tagbar#autoopen(1)
" Auto open tagbar if opening a supported file
autocmd FileType * nested :call tagbar#autoopen(0)
let g:tagbar_width = 35
let g:tagbar_expand = 1  "Expand the window to accomodate tagbar
let g:tagbar_foldlevel = 0  "Start tagbar with folds collapsed

set lines=40 columns=84
