execute pathogen#infect()

set encoding=utf-8

" More colors in colors
set t_Co=256

" colorscheme badwolf
" colorscheme devbox-dark-256
colorscheme gotham256

set number
syntax on

" Control LAMMPS syntax
augroup filetypedetect
    au BufRead,BufNewFile *.lamps setf lammps
augroup end

" Custom comment style for lammps
call tcomment#DefineType('lammps', '# %s')

filetype on
filetype plugin on
filetype indent on

" spaces in a tab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent

set nocompatible
set encoding=utf-8
set fileencodings=usc-bom,utf-8,latin2
set termencoding=utf-8
set guifont=Consolas:h11:cDEFAUL

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Space as a Leader
let mapleader=" "


" My own shortcut for 'de-highlightning' search results
map <Leader>h :noh <CR>
" Toggle mini bufer explorer (not shure if it's still needed at all)
map <Leader>m :MBEToggle <CR>
" Show nicer buf explorer
map <Leader>e :BufExplorer<CR>
" " Uber good saving files
map <Leader>w :w <CR> :echo "Is he live or dead? Has he thoughts within his head?"<CR>
" Maybe quit if needed
map <Leader>q :wq <CR> :echo "Wydupa i zapis" <CR>

" Autocomment
map <C-c> :TComment<CR>

" NERDTree toggle Qt style 
map <Leader>0 :NERDTreeToggle<CR>
