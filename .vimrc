filetype plugin indent on

"  ____            __
" |  _ \ _ __ ___ / _| ___ _ __ ___ _ __   ___ ___  ___
" | |_) | '__/ _ \ |_ / _ \ '__/ _ \ '_ \ / __/ _ \/ __|
" |  __/| | |  __/  _|  __/ | |  __/ | | | (_|  __/\__ \
" |_|   |_|  \___|_|  \___|_|  \___|_| |_|\___\___||___/

" Syntax hilighting
syntax on

" fzf Fuzzy finder
set rtp+=~/.fzf

" 4 spaces for tabs
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Show linenumbers
set number
" set relativenumber

" Colorscheme
colors zenburn

" Highlight the 80th column
set cursorline
set cc=80
highlight ColorColumn ctermbg=darkblue

"Highlight tabs and extra whitespace
highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s /
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

let @w = ':%s/\s\+$//e'

" Disable .swp and backup files
set nobackup
set nowritebackup
set noswapfile

" Allow write of read-only files
cmap w!! w !sudo tee > /dev/null %

" vim-sensible changes I liked
set laststatus=0
set backspace=indent,eol,start
set incsearch
set scrolloff=2
set smarttab

let g:ale_python_pylint_options = '--rcfile ~/.dotfiles/.pylintrc'


" __  __                   _
"|  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___
"| |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
"| |  | | (_| | |_) | |_) | | | | | (_| \__ \
"|_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"             |_|   |_|            |___/
" CAUTION: many mappings below
mapclear

" Leader :^)
let mapleader = ','

" Map kpl syntax higlight enable to <F1> for CSCI 509
nnoremap <F1> :setf kpl<CR>:set shiftwidth=2<CR>:set tabstop=2<CR>:set expandtab<CR>:set autoindent<CR>

" Open and source vimconfig mapping
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Toggle paste mode
nnoremap <leader>p :set paste!<CR>

" Make space more useful
nnoremap <space> zz

" Toggle uppercase on word in normal and visual modes
nnoremap <c-u> viwU
vnoremap <c-u> iwU

" Copy and paste one line below or above
noremap - ddjP
noremap _ ddkP

" Abbreviations!
iabbrev adn and

" ____  _             _
"|  _ \| |_   _  __ _(_)_ __  ___
"| |_) | | | | |/ _` | | '_ \/ __|
"|  __/| | |_| | (_| | | | | \__ \
"|_|   |_|\__,_|\__, |_|_| |_|___/
               "|___/
"call plug#begin()

"Plug 'scrooloose/nerdcommenter'
"Plug 'dense-analysis/ale'
"Plug 'yggdroot/indentline'

"call plug#end()
