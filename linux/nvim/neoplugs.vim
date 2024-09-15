" PLUGINS ===========================================

call plug#begin('~/.vim/plugged')

"Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' } "REPL for clojure
"Plug 'fatih/vim-go', { 'tag': '*' } " for go-lang
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Add commands
"Plug '~/my-prototype-plugin' " ???

"	Colors	=================================

"	these have several colors by themselves	:D

"Plug 'flazz/vim-colorschemes'
"Plug 'gosukiwi/vim-atom-dark'

"	============================================================

Plug 'carakan/new-railscasts-theme' "new-railcast
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'ltlollo/diokai'
Plug 'benjaminwhite/Benokai'
"Plug 'jacoborus/tender.vim'
"Plug 'endel/vim-github-colorscheme'
"Plug 'sickill/vim-monokai'
"Plug 'cschlueter/vim-wombat'
"Plug 'sherifkandeel/vim-colors'
"Plug 'crusoexia/vim-monokai' 
"Plug 'google/vim-colorscheme-primary' "primary
"Plug 'zeis/vim-kolor'	"kolor

"	General purpose plugins set by myself 

"Plug 'Valloric/YouCompleteMe' " i prefer deoplete for neovim instead
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " show posible autocompletations
Plug 'ervandew/supertab' " Enable selection completation with tab
" let g:SuperTabDefaultCompletionType = "<c-n>" " Default config for supertab
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive' " Git commits
Plug 'majutsushi/tagbar' " Show functions
"Plug 'vim-syntastic/syntastic'	"	Let u see if code is correctly written
Plug 'terryma/vim-multiple-cursors'  "  Sublime multiple cursors
"Plug 'ctrlpvim/ctrlp.vim' " Path finder
Plug 'tpope/vim-surround'  "  Useful for html, css code
Plug 'easymotion/vim-easymotion' " ?
Plug 'vim-airline/vim-airline'  "  This goes with the following 2 lines
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'  "  Help to clean ur code
Plug 'chrisbra/NrrwRgn' " Show a portion of selected code
"Plug 'wincent/command-t', {
"    \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
"    \ }
"Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot' " Provides grammar for multiple languages
"Plug 'jiangmiao/auto-pairs'

Plug 'artur-shaik/vim-javacomplete2'
"Plug 'airblade/vim-rooter' " ?


call plug#end()

