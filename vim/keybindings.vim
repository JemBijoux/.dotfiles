" VIM Keybindings

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

nnoremap <c-h> :wincmd h<cr>  " Change to left window
nnoremap <c-j> :wincmd j<cr>  " Change to window below
nnoremap <c-k> :wincmd k<cr>  " Change to window above
nnoremap <c-l> :wincmd l<cr>  " Change to right window


" }}}
" Custom Key Mappings {{{

nnoremap <leader>b :NERDTreeToggle<cr>    " Toggle NerdTree
nnoremap <leader><space> :nohlsearch<CR>  " turn off search highlight
nnoremap <leader>s :write<CR>             " Save current file
nnoremap <silent> <leader>l :set nolist!<CR>  " Toggle invisible characters

" Make scrolling just a little faster.
nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>

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
