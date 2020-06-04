" ---------- plugins ----------

call plug#begin()

Plug 'morhetz/gruvbox' " theme
Plug 'terryma/vim-multiple-cursors' " duplicate cursor
Plug 'sheerun/vim-polyglot' " syntax
Plug 'w0rp/ale' " eslint
Plug 'jiangmiao/auto-pairs' " add pairs
Plug 'yuttie/comfortable-motion.vim' " confortable scroll
Plug 'tomtom/tcomment_vim' " comment

" ultisnips (create custom snippets)
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" fzf (search and show files in menu to open)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" ncm2 (auto complete)

" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
"
" autocmd BufEnter * call ncm2#enable_for_buffer() " enable ncm2 for all buffers
"
" set completeopt=noinsert,menuone,noselect " :help Ncm2PopupOpen for more information
"
" " list of sources: https://github.com/ncm2/ncm2/wiki
"
" " general purpose
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-github'
" Plug 'ncm2/ncm2-tmux'
" Plug 'ncm2/ncm2-tagprefix'
" Plug 'filipekiss/ncm2-look.vim'
" Plug 'ncm2/ncm2-gtags'
" Plug 'ncm2/ncm2-syntax'
" Plug 'Shougo/neco-syntax'
" Plug 'ncm2/ncm2-neoinclude'
" Plug 'Shougo/neoinclude.vim'
" Plug 'wellle/tmux-complete.vim'
" Plug 'yuki-ycino/ncm2-dictionary'
" Plug 'fgrsnau/ncm2-aspell'
" Plug 'fgrsnau/ncm2-otherbuf'
" Plug 'loonies/ncm2-ledger'
"Plug 'ncm2-yoink'

" CSS
"Plug 'ncm2/ncm2-cssomni'

" JavaScript
"Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}

" TypeScript
"Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" Python
"Plug 'ncm2/ncm2-jedi'

" C/C++
"Plug 'ncm2/ncm2-pyclang'
"autocmd FileType c,cpp nnoremap <buffer> gd :<c-u>call ncm2_pyclang#goto_declaration()<cr>

" Latex
"Plug 'lervag/vimtex'

" VimScript
"Plug 'ncm2/ncm2-vim'
"Plug 'Shougo/neco-vim'

" PHP
"Plug 'phpactor/ncm2-phpactor',  {'do': 'composer install', 'for': 'php'}

" Java
"Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
"Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}

call plug#end()

" ---------- themes ----------

colorscheme gruvbox
"set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" ---------- commands ----------

"set relativenumber
"set scrollbind
set noet ci pi sts=0 sw=4 ts=4
set hidden
set number
set mouse=a
set inccommand=split
set nowrap
set sidescroll=1
set formatoptions-=cro

" -------- keymap --------

let mapleader="\<space>"
nnoremap <leader>n :set relativenumber<cr>
nnoremap <leader>N :set relativenumber!<cr>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sc :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pp :Files<cr>
nnoremap <leader>ff :Ag<space>
nnoremap <leader>bh :Vex<cr><c-w>H
nnoremap <leader>bj :Vex<cr><c-w>J
nnoremap <leader>bk :Vex<cr><c-w>K
nnoremap <leader>bl :Vex<cr><c-w>L
nnoremap <leader>vr :vertical resize<space>
nnoremap <leader>hr :resize<space>
nnoremap <leader>vR :vertical split<cr>:q<cr>
nnoremap <leader>hR :split<cr>:q<cr>
nnoremap <leader>sn :UltiSnipsEdit<cr>
nnoremap <leader>ma :set mouse=a<cr>
nnoremap <leader>mc :set mouse=c<cr>

" ---------- config ----------

" UltiSnips
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

