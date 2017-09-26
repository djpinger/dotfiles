"execute pathogen#infect()
set t_Co=256
set background=dark
colorscheme molokai
syntax on
"nnoremap _p p`[v`]=
set paste
set ruler
set expandtab
set tabstop=4
set shiftwidth=4
map <F2> :retab
"set autoindent
set laststatus=2
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set number
"set relativenumber
filetype indent on
set wildmenu
map <silent> <A-Left> :tabprevious<CR>
map <silent> <A-Right> :tabnext<CR>
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
filetype plugin on
set guifont=Monaco\ For\ Powerline:h15
