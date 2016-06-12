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

" Use ctrl-arrow keys to jump around windows.
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l

" }}}
" Change Color Schemes {{{

nnoremap <F2> :set background=dark<cr>
nnoremap <F3> :set background=light<cr>

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
nnoremap <leader>w :Gwrite<CR><bar> :echo "Git added:" expand('%:t')<CR>
nnoremap <leader>e :Gcommit<CR><bar> :echo "Git Commit..."<CR>

" Copy and paste from system buffer
nnoremap <leader>p "+p
vnoremap <leader>c "+y

" Make a pane just a little bigger:
nnoremap <leader>+ :resize+10<CR>

" Make scrolling just a little faster.
nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>

" Make horizontal scrolling a little faster
nnoremap zl 3zl " Scroll left
nnoremap zh 3zh " Scroll left

" Swap ' and ` (for navigating to marks)
nnoremap ' `
nnoremap ` ''

" Swap ; and : for easier commands
nnoremap ; :
nnoremap : ;

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
