syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
set incsearch
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
" color
Plug 'morhetz/gruvbox'

" fast grep
Plug 'jremmen/vim-ripgrep'

" ts support
Plug 'leafgarland/typescript-vim'

"Man
Plug 'vim-utils/vim-man'

" C/C++
Plug 'lyuts/vim-rtags'

" file finding
Plug 'ctrlpvim/ctrlp.vim'

" auto complete
Plug 'valloric/youcompleteme'

Plug 'mbbill/undotree'

" for .md files
Plug 'plasticboy/vim-markdown'

" for Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"file navigation
Plug 'preservim/nerdtree'


call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner=0
"let g:vimwiki_list = [{'path': '~/Dropbox/Notes'}]
let g:netrw_winsize=25
"let g:vimwiki_list = [{'path': '~/Dropbox/',
"                      \ 'syntax': 'markdown', 'ext': '.md'}]

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gf :YcmCompleter FixIt<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>gs :G<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>e <Plug> VimwikiFollowLink
nnoremap <leader>nt :NERDTree<CR>


