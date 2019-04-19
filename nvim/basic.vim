
set autoindent
set tabstop=4
set shiftwidth=4
set ruler
set wildmenu
set wildmode=list:longest,full
"set background=dark
set relativenumber

syntax enable

"colorscheme Tomorrow-Night
"colorscheme Benokai
"colorscheme Revolution
colorscheme gruvbox
"colorscheme atom-dark-256
"colorscheme xoria256
"colorscheme benlight
"colorscheme railscasts
"colorscheme molokai_dark

" Extra fancyness if full pallete is supported.
if &t_Co >= 256 || has("gui_running")
    set cursorline
    set cursorcolumn
endif

" Quicker window movement
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-h> <C-w>h
 nnoremap <C-l> <C-w>l

"	auto resize Vim splits to active split
" set winwidth=104  "If u have a normal screen 
" set winheight=5
" set winminheight=5
" set winheight=999
set winwidth=80  "if you have a minilaptop, enable these  4 lines
set winheight=5
set winminheight=5
set winheight=500

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F2 before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"

"	switch between the last two files (<leader> means \)
nnoremap <leader><leader> <c-^>

" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
\ endif

" Copy to the clipboard
set clipboard+=unnamedplus
