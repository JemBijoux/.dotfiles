" VIM Plugins - Loaded via 'vim-plug'

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'

" Javascript Plugins
" Plug 'othree/yajs.vim'
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
" Plug 'mustache/vim-mustache-handlebars'
Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
" Plug 'csscomb/vim-csscomb' " Applies more fomatting than I want normally...
Plug 'hail2u/vim-css3-syntax'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-haml'
Plug 'cakebaker/scss-syntax.vim'
Plug 'rking/ag.vim'

" BuildYCM Function{{{
function! BuildYCM(info)
  " Build up the compiled portion of YCM for javascript.
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --tern-completer
  endif
endfunction
" }}}
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" Still evaluating whether we need this or not, maybe we can learn to love
" built in autocompletion. However, if you do want to install YouCompleteMe
" this will ensure it's loaded and built propertly from the start.

call plug#end()

" Misc / Single Settings {{{

" let g:mustache_abbreviations = 1 " Turn on mustach abbreviations



" }}}
" Airline {{{
" Statusbar / extra UI display

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1 " Make sure alternate font symbols display
let g:airline#extensions#tabline#enabled = 1 "Display all buffers when only 1

let g:airline#extensions#tabline#buffer_nr_show = 1 " Show buffer # in tab
let g:airline#extensions#tabline#formatter = 'unique_tail' " Show unique file path


" }}}
" Syntastic Config {{{
" Syntax checking / highlighting

" let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0 " Don't automatically open error list.
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5 " Error location list is 5 lines high.

let g:syntastic_javascript_checkers = ['eslint']

" }}}
" CTRL-P {{{

let g:ctrlp_working_path_mode = 'w' " Start ctrl-p from cwd instead of file dir

" Ignore files in .gitignore lists
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Git Fugitive {{{

" Default to vertical split for diffing

if exists(':Gdiff')
  set diffopt+=vertical
endif

" }}}
" vim:foldmethod=marker:foldlevel=0
