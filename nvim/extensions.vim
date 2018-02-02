
" Color
" =====================================================================================
colorscheme diokai

" Vim  airline
" =====================================================================================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Recommended syntastic configuration
" =====================================================================================
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*          
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1          
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0  

" Deoplete 
" =====================================================================================
let g:deoplete#enable_at_startup = 1

" Rooter
" =====================================================================================
" let g:rooter_change_directory_for_non_project_files = 'current' " Similar to autochdir
"let g:rooter_change_directory_for_non_project_files = ''

" UltisSnips
" =====================================================================================
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" YouCompleteMe and UltiSnips compatibility.
" =====================================================================================
"let g:UltiSnipsExpandTrigger = '<Tab>'
"let g:UltiSnipsJumpForwardTrigger = '<Tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
"
"" Prevent UltiSnips from removing our carefully-crafted mappings.
"let g:UltiSnipsMappingsToIgnore = ['autocomplete']
"
"if has('autocmd')
"  augroup WincentAutocomplete
"    autocmd!
"    autocmd! User UltiSnipsEnterFirstSnippet
"    autocmd User UltiSnipsEnterFirstSnippet call autocomplete#setup_mappings()
"    autocmd! User UltiSnipsExitLastSnippet
"    autocmd User UltiSnipsExitLastSnippet call autocomplete#teardown_mappings()
"  augroup END
"endif
"
"let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
"let g:ycm_key_list_accept_completion = ['<C-y>']
"
"" Additional UltiSnips config.
"let g:UltiSnipsSnippetsDir = '~/.vim/ultisnips'
"let g:UltiSnipsSnippetDirectories = ['ultisnips']
"
"" Additional YouCompleteMe config.
"let g:ycm_complete_in_comments = 0
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"let g:ycm_seed_identifiers_with_syntax = 0
"
"" Disable unhelpful semantic completions.
"let g:ycm_filetype_specific_completion_to_disable = {
"      \   'c': 0,
"      \   'gitcommit': 0,
"      \   'haskell': 0,
"      \   'javascript': 0,
"      \   'ruby': 0
"      \ }
"
"let g:ycm_semantic_triggers = {
"      \   'haskell': [
"      \     '.',
"      \     '(',
"      \     ',',
"      \     ', '
"      \   ]
"      \ }
"
"" Same as default, but with "markdown" and "text" removed.
"let g:ycm_filetype_blacklist = {
"      \   'notes': 0,
"      \   'unite': 0,
"      \   'tagbar': 0,
"      \   'pandoc': 0,
"      \   'qf': 0,
"      \   'vimwiki': 0,
"\ 'infolog': 0,
"      \   'mail': 0
"\ }

