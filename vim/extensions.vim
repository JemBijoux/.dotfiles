" VIM Plugins - Loaded via 'vim-plug'

call plug#begin()

" Plug 'vim-airline/vim-airline'
Plug 'ap/vim-buftabline'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rking/ag.vim'

" Javascript Plugins
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json'

" Plug 'mustache/vim-mustache-handlebars'
" Plug 'sheerun/vim-polyglot'

" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'csscomb/vim-csscomb' " Applies more fomatting than I want normally...
Plug 'hail2u/vim-css3-syntax'
" Plug 'Raimondi/delimitMate'
" Plug 'tpope/vim-haml'
Plug 'cakebaker/scss-syntax.vim'
Plug 'lambdatoast/elm.vim'
" Plug 'elmcast/elm-vim'
Plug 'editorconfig/editorconfig-vim'

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
" Buffer Tab Line {{{
" Buffers displayed in the tab line (instead of tabs) across top of screen

let g:buftabline_show = 1
let g:buftabline_numbers = 1

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
" CTRL-P / FZF {{{

" let g:ctrlp_working_path_mode = 'w' " Start ctrl-p from cwd instead of file dir

" Ignore files in .gitignore lists
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

nnoremap <C-p> :FZF<CR>
inoremap <C-p> <ESC>:FZF<CR>i

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'


" }}}
" Git Fugitive {{{

" Default to vertical split for diffing
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_core_mode = 'external_command'
" Uncomment this to see editorconfig data on file load
" let g:EditorConfig_verbose=1

if exists(':Gdiff')
  set diffopt+=vertical
endif

" }}}
" vim:foldmethod=marker:foldlevel=0
