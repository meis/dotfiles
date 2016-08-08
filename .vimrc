call plug#begin('~/.vim/plugged')
    " Visual file tree
    Plug 'scrooloose/nerdtree'
    " Collection of color schemes
    Plug 'flazz/vim-colorschemes'
    " Syntax checking
    Plug 'scrooloose/syntastic'
    " Full path fuzzy file, buffer, mru, tag, ... finder for Vim
    Plug 'ctrlpvim/ctrlp.vim'
    " Perl syntax and helpers
    Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
call plug#end()

" Default colorscheme
colorscheme janah

" Use filetype detection and file-based automatic indenting
filetype plugin indent on
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype perl setlocal ts=4 sts=4 sw=4

set tabstop=4     " The width of a TAB is set to 4.
                  " Still it is a \t. It is just that
                  " Vim will interpret it to be having
                  " a width of 4
set shiftwidth=4  " Indents will have a width of 4
set softtabstop=4 " Sets the number of columns for a TAB
set expandtab     " Expand TABs to spaces

set ic            " Ignore case in search patterns
set scs           " Smart search (override 'ic' when pattern has uppers)

set nobackup      " No backup (~) files
set noswapfile    " No swap (.swp) files

set nonumber      " Don't display number lines by default

" Recommended synctastic settings
set statusline+=%#warningmsg#
set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Show/hide line numbers
nnoremap <silent> <C-n> :set invnumber<CR>

" Show/hide NERDTree
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
" Locate current file in NERdTree
nnoremap <silent> ,t :NERDTreeFind<CR>

" Switching between windows in an easier way
map <Tab> <C-W><C-W>
map <C-K> <C-W>k
map <C-J> <C-W>j
map <C-H> <C-W>h
map <C-L> <C-W>l

" pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv
nnoremap > >i{
nnoremap < <i{
nnoremap = =i{

" Common typos.
command! Qa qa
command! Q q
command! W w
command! Wq wq
