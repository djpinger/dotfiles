set backspace=indent,eol,start
set t_Co=256
set background=dark
colorscheme molokai
syntax on
set paste
set ruler
set expandtab
set tabstop=4
set shiftwidth=4
map <F2> :retab
set laststatus=2
set number
filetype indent on
set wildmenu
map <silent> <A-Left> :tabprevious<CR>
map <silent> <A-Right> :tabnext<CR>
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
filetype plugin on
set guifont=Monaco\ For\ Powerline:h15
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'hashivim/vim-packer'
Plug 'hashivim/vim-terraform'
Plug 'scrooloose/nerdtree'
call plug#end()
nnoremap -gblame ma:%!git blame % 2>/dev/null`a
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFocus<CR>
