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
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



" }}}
" CTRL-P {{{

" Ignore files in .gitignore lists
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] 



" }}}
if exists(':Gdiff')
  set diffopt+=vertical
endif
 
" vim:foldmethod=marker:foldlevel=0
