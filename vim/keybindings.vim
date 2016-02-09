" VIM Keybindings

" Map config files to function keys {{{
" Open and Write configuration files quickly
nnoremap <F12> :e ~/.vim/vimrc<CR>
nnoremap <F11> :source ~/.vim/vimrc <bar> :echo "Sourced .vimrc file"<CR>

nnoremap <F10> :e ~/.vim/gvimrc<CR>
nnoremap <F9> :source ~/.vim/gvimrc <bar> :echo "Sourced .gvimrc file"<CR>

nnoremap <F8> :e ~/.vim/extensions.vim<CR>
nnoremap <F7> :source ~/.vim/extensions.vim <bar> :echo "Sourced plugin file"<CR>

nnoremap <F6> :e ~/.vim/keybindings.vim<CR>
nnoremap <F5> :source ~/.vim/keybindings.vim <bar> :echo "Sourced Keymap file"<CR>

" }}}
" Disable Arrow Keys (hardcore mode) {{{

inoremap  <Up>     :echo "Don't be ridiculous; use h/j/k/l instead"<cr> 
inoremap  <Down>   :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
inoremap  <Left>   :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
inoremap  <Right>  :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
noremap   <Up>     :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
noremap   <Down>   :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
noremap   <Left>   :echo "Don't be ridiculous; use h/j/k/l instead"<cr>
noremap   <Right>  :echo "Don't be ridiculous; use h/j/k/l instead"<cr>

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
