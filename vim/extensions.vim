" VIM Plugins - Loaded via 'vim-plug'

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'othree/yajs.vim'
Plug 'elzr/vim-json'
Plug 'mustache/vim-mustache-handlebars'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'csscomb/vim-csscomb'
Plug 'Valloric/YouCompleteMe'
Plug 'hail2u/vim-css3-syntax'
Plug 'tpope/vim-haml'

call plug#end()

" Single Misc Settings =>
let g:mustache_abbreviations = 1 " Turn on mustach abbreviations

" Specific Plugin Sections =>
" Airline / Statusbar {{{

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1 " Make sure alternate font symbols display
let g:airline#extensions#tabline#enabled = 1 "Display all buffers when only 1


" }}}
" Syntastic Config {{{

" Syntax checking / highlighting

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0 " Don't automatically open error list.
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5 " Error location list is 5 lines high.


" }}}
" CTRL-P {{{

" Ignore files in .gitignore lists
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] 

" Git Fugitive {{{

" Default to vertical split for diffing

if exists(':Gdiff')
  set diffopt+=vertical
endif
 
" }}}
" vim:foldmethod=marker:foldlevel=0
"
