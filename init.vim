call plug#begin(stdpath('data') . '/plugged')
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'puremourning/vimspector'
Plug 'tanvirtin/monokai.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'ziglang/zig.vim'
call plug#end()

" close auto if last
au BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" auto open nerd tree
au VimEnter * :NERDTree | wincmd p

" vimspector
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]

set guifont=DroidSansMono\ Nerd\ Font\ 11
nnoremap <C-b> :NERDTreeToggle<CR>

" vim stuff
filetype plugin indent on
set expandtab
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set colorcolumn=80
syntax on
colorscheme monokai
