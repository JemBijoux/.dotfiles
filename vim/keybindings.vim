" VIM Keybindings

" Unbind space (avoid the moving right)
" nnoremap <Space> <nop>

nnoremap <SPACE> <Nop>
" Bind space to the leader key
let mapleader = "\<Space>"

" Map config files to function keys {{{
" Open and Write configuration files quickly
nnoremap <F12> :e ~/.dotfiles/vim/vimrc<CR>
nnoremap <F11> :e ~/.dotfiles/vim/extensions.vim<CR>
nnoremap <F10> :e ~/.dotfiles/vim/keybindings.vim<CR>
nnoremap <F9> :e ~/.dotfiles/vim/gvimrc<CR>

nnoremap <S-F12> :source ~/.dotfiles/vim/vimrc<CR> <bar> :echo "Sourced .vimrc file"<CR>
nnoremap <S-F11> :source ~/.dotfiles/vim/extensions.vim <bar> :echo "Sourced plugin file"<CR>
nnoremap <S-F10> :source ~/.dotfiles/vim/keybindings.vim <bar> :echo "Sourced Keymap file"<CR>
nnoremap <S-F9> :source ~/.dotfiles/vim/gvimrc<CR> \| :echo "Sourced .gvimrc file"<CR>

" Put the gdiff into a vertical split
nnoremap <leader>d v;Gdiff
 kc

" GITGUTTER commands to navigate hunks
" Jump to next / prev hunks
nmap <leader>. <Plug>GitGutterNextHunk
nmap <leader>, <Plug>GitGutterPrevHunk
" Stage/undo/preview hunks
nmap <Leader>gs <Plug>GitGutterStageHunk
nmap <Leader>gu <Plug>GitGutterUndoHunk
nmap <Leader>gp <Plug>GitGutterPreviewHunk
" Hunk Text Objects
omap ih <Plug>GitGutterTextObjectInnerPending
omap ah <Plug>GitGutterTextObjectOuterPending
xmap ih <Plug>GitGutterTextObjectInnerVisual
xmap ah <Plug>GitGutterTextObjectOuterVisual

" }}}
" Disable Arrow Keys (hardcore mode) {{{

noremap   <Up>     :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
noremap   <Down>   :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
noremap   <Left>   :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
noremap   <Right>  :echo "Don't be ridiculous; use h/j/k/l instead"<cr>

" Super pro mode: (not all there yet...)
" inoremap  <Up>     :echo "Don't be ridiculous; use h/j/k/l instead"<cr> 
" inoremap  <Down>   :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
" inoremap  <Left>   :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
" inoremap  <Right>  :echo "Don't be ridiculous; use h/j/k/l instead"<cr>


" }}}
" Buffer / Window / Tab Management {{{

nnoremap ˙ :bp<cr>  " Change to previous buffer
nnoremap ¬ :bn<cr>  " Change to next buffer

nnoremap <leader>n :bp<cr>  " Change to previous buffer
nnoremap <leader>m :bn<cr>  " Change to next buffer

" Use ctrl-arrow keys to jump around windows.
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l

cnoremap <leader>h <C-W>h
cnoremap <leader>j <C-W>j
cnoremap <leader>k <C-W>k
cnoremap <leader>l <C-W>l

" }}}
" Change Color Schemes {{{

" nnoremap <F2> :set background=dark<cr>
" nnoremap <F3> :set background=light<cr>

nnoremap <F2> :colorscheme base16-flat-dark<cr>
nnoremap <F3> :colorscheme base16-flat-light<cr>

" Set filetype to jsx (useful for opening javascript files that have it)
nnoremap <F4> :set ft=javascript.jsx<cr>

" }}}
" Custom Key Mappings {{{

" Bind jj to escape.
inoremap jj <esc>

" Toggle NerdTree
nnoremap <leader>b :NERDTreeToggle<cr>

" Save current file
nnoremap <leader>s :write<CR><bar> :echo "File Saved:" expand('%:t')<CR>

" Git Futigive Commands  (git status)
nnoremap <leader>q :Gstatus<CR><bar> :echo "Showing Git Status"<CR>
nnoremap <leader>w :Gwrite<CR><bar>:w<CR><bar> :echo "Git added:" expand('%:t')<CR>
nnoremap <leader>e :Gcommit<CR><bar> :echo "Git Commit..."<CR>

" Copy and paste from system buffer
nnoremap <leader>p "+p
vnoremap <leader>c "+y

" Remove a buffer
nnoremap <leader>x :bd<CR>

" Make a pane just a little bigger/smaller:
nnoremap <leader>+ :vertical resize+10<CR>
nnoremap <leader>_ :vertical resize-10<CR>
nnoremap <leader>= :resize+10<CR>
nnoremap <leader>- :resize-10<CR>

" Toggle Indent Guides
nnoremap <leader>t :IndentGuidesToggle<CR>

" Make scrolling just a little faster.
nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>

" Make horizontal scrolling a little faster
nnoremap zl 10zl " Scroll left
nnoremap zh 10zh " Scroll left

" Swap ' and ` (for navigating to marks)
nnoremap ' `
nnoremap ` ''

" Swap ; and : for easier commands
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Useful to reselect pasted text
" See: http://vim.wikia.com/wiki/Selecting_your_pasted_text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" }}}
" Jump to buffer ordinals {{{

" Jump to buffer ordinals (not buffer number) with leader
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)

" }}}
" Moving entire lines up/down {{{

" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" MacVim Variation (for mac alt-keys that map to specific chars)
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv
 
" }}}
" vim:foldmethod=marker:foldlevel=0
