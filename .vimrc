filetype plugin indent on

" Preferences

" Syntax hilighting
syntax on

" 4 spaces for tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Show linenumbers
set number
" set relativenumber

" Colorscheme
colors zenburn

" Plugins
call plug#begin('~/.vim')

Plug 'vim-syntastic/syntastic'
Plug 'https://github.com/rodjek/vim-puppet.git'

call plug#end()

let g:syntastic_mode_map = {
            \ "mode": "active",
            \ "passive_filetypes": ["s", "asm"] }

" Highlight the 80th column
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

" Python syntax checker
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['pyflakes', 'python']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Allow write of read-only files
cmap w!! w !sudo tee > /dev/null %
