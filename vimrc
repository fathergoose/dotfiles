" Vim-plug setup
    call plug#begin('~/.vim/plugged')
        Plug 'ctrlpvim/ctrlp.vim'
        Plug 'pangloss/vim-javascript'
        Plug 'othree/javascript-libraries-syntax.vim'
        Plug 'neomake/neomake' | Plug 'dojoteef/neomake-autolint'
        Plug 'mileszs/ack.vim'
        Plug 'scrooloose/nerdcommenter'
        Plug 'OrangeT/vim-csharp'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " With on-demand loading
    call plug#end()

" Plugin Settings
    let g:used_javascript_libs = 'angularjs'
    let g:neomake_javascript_enabled_makers = ['eslint']
    let g:neomake_autolint_cachedir = '/home/al/.vim/autolint'
    let g:neomake_autolint_sign_column_always = 1

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ackprg = 'ag --nogroup --nocolor --column'
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 1
endif
    
" General Settings
    syntax on
    filetype plugin indent on
    let mapleader = ','
    set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
    set number
    set nowrap

" Keymapings
    nnoremap <leader>ev :vsplit $MYVIMRC<CR>
    nnoremap <leader>sv :source $MYVIMRC<CR>
    nnoremap <C-n> :NERDTreeToggle<CR>
    nnoremap <leader>ag :Ack!<space>

" Abbreviations
    cnoreabbrev Ack Ack!

" Autocmds
  "autocmd BufWritePost,BufEnter * Neomake

 
