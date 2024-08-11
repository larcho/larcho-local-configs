call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
call plug#end()

" Personal Settings
set ignorecase
set smartcase
set cursorline
set number

" Gruvbox
set bg=dark
colorscheme gruvbox

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" RipGrep
nnoremap <silent> <leader>r :Rg<cr>

" FZF
nnoremap <c-p> :FZF<cr>
nnoremap <c-y> :Buffers<cr>

" NERDTree
nnoremap <c-t> :NERDTreeToggle<cr>

" JavaScript
autocmd FileType javascript setlocal sw=2 ts=2 sts=2 expandtab
autocmd FileType javascript.jsx setlocal sw=2 ts=2 sts=2 expandtab
autocmd FileType javascriptreact setlocal sw=2 ts=2 sts=2 expandtab
autocmd FileType typescriptreact setlocal sw=2 ts=2 sts=2 expandtab
autocmd FileType typescript setlocal sw=2 ts=2 sts=2 expandtab

" Yank highlight
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=700})
augroup END

" CoC confirm completion
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
