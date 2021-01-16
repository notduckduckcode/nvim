call plug#begin('~/.vim/plugged')

    Plug 'kevinhwang91/rnvimr'

    Plug 'norcalli/nvim-colorizer.lua'

    Plug 'wesQ3/vim-windowswap'

    Plug 'dracula/vim', { 'as': 'dracula' }

    Plug 'junegunn/goyo.vim'

    Plug 'mhinz/vim-startify'

    Plug 'jiangmiao/auto-pairs'

    Plug 'tpope/vim-commentary'

    Plug 'unblevable/quick-scope'

    Plug 'machakann/vim-highlightedyank'

    Plug 'sheerun/vim-polyglot'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }

    Plug 'junegunn/fzf.vim'

    Plug 'tpope/vim-fugitive'

    Plug 'francoiscabrol/ranger.vim'

    Plug 'rbgrouleff/bclose.vim'

    Plug 'tpope/vim-rhubarb'

    Plug 'junegunn/gv.vim'

    Plug 'rhysd/git-messenger.vim'

    Plug 'mbbill/undotree'

call plug#end()

if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

colorscheme dracula

" Bindings

nmap <Leader>gm <Plug>(git-messenger)

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

set mouse=a
