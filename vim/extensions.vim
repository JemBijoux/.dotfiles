" VIM Plugins - Loaded via 'vim-plug'

call plug#begin()

Plug 'ap/vim-buftabline'
" Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'

" Git tooling
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" File Browser
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Distraction free mode
Plug 'junegunn/goyo.vim'

Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jparise/vim-graphql'
Plug 'fatih/vim-go'

" Plug 'flowtype/vim-flow'
Plug 'majutsushi/tagbar'

" Javascript Plugins
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
" Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json'
Plug 'kchmck/vim-coffee-script'
Plug 'prettier/vim-prettier'

" Typescript Stuff
" Plug 'leafgarland/typescript-vim', { 'for': ['typescript', 'typescript.jsx'] }
" Plug 'Quramy/tsuquyomi', { 'for': ['typescript', 'typescript.jsx'] }
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Quramy/tsuquyomi'

" Python Plugins
" Plug 'klen/python-mode'

" Syntax checking (eslint, etc)
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'

" ctags Helpers
Plug 'craigemery/vim-autotag'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" General languages
Plug 'sheerun/vim-polyglot'

Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/unite.vim'

" Plug 'cakebaker/scss-syntax.vim'
" Plug 'lambdatoast/elm.vim'
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
    !./install.py --all
  endif
endfunction
" }}}

" YCM hasn't been good to me recently
" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

call plug#end()

" let g:ale_javascript_eslint_executable = './node_modules/.bin/eslint'
let g:ale_linters = {
\ 'typescript': ['tslint']
\}

" Misc / Single Settings {{{

" let g:mustache_abbreviations = 1 " Turn on mustach abbreviations
let NERDTreeShowLineNumbers=1

" Indent guides
" REVIEW: These were disabled, can we turn this back on..?
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=10
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=blue    ctermbg=0
" let g:indent_guides_enable_on_vim_startup = 1

" }}}
" Buffer Tab Line {{{
" Buffers displayed in the tab line (instead of tabs) across top of screen

let g:buftabline_show = 1
let g:buftabline_numbers = 1

hi link BufTabLineCurrent PmenuSel
hi link BufTabLineActive TabLineSel

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
" Typescript Stuff {{{
let g:ale_completion_enabled = 1

" autocmd FileType typescript setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let g:typescript_indent_disable = 1
let g:tsuquyomi_completion_detail = 1
autocmd FileType typescript setlocal completeopt+=menu,preview
" autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
autocmd FileType typescript nnoremap <buffer> <Leader>y :<C-u>echo tsuquyomi#hint()<CR>
autocmd FileType typescript.tsx nnoremap <buffer> <Leader>y :echo "hi there from tsx"<cr>

let g:tagbar_type_typescript = {
      \ 'ctagsbin' : 'tstags',
      \ 'ctagsargs' : '-f-',
      \ 'kinds': [
      \ 'e:enums:0:1',
      \ 'f:function:0:1',
      \ 't:typealias:0:1',
      \ 'M:Module:0:1',
      \ 'I:import:0:1',
      \ 'i:interface:0:1',
      \ 'C:class:0:1',
      \ 'm:method:0:1',
      \ 'p:property:0:1',
      \ 'v:variable:0:1',
      \ 'c:const:0:1',
      \ ],
      \ 'sort' : 0
      \ }     

let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }

" }}}
" CTRL-P / FZF {{{

" let g:ctrlp_working_path_mode = 'w' " Start ctrl-p from cwd instead of file dir

" Ignore files in .gitignore lists
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

nnoremap <C-p> :FZF<CR>
inoremap <C-p> <ESC>:FZF<CR>i

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'


" }}}
" Git Stuff {{{

" GIT GUTTER SETTINGS -- Show git diff signs in gutter
" Disable gitgutters default keymaps (which conflict with my leaders)
let g:gitgutter_map_keys = 0


" Default to vertical split for diffing
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_core_mode = 'external_command'
" Uncomment this to see editorconfig data on file load
" let g:EditorConfig_verbose=1

" Gdiff is from vim fugitive
" if exists(':Gdiff')
" set diffopt+=vertical
" endif

" }}}
" vim:foldmethod=marker:foldlevel=0
