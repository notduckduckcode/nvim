call plug#begin('~/.vim/plugged')

    Plug 'glepnir/galaxyline.nvim'

    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'ryanoasis/vim-devicons'

    Plug 'kevinhwang91/rnvimr'

    Plug 'norcalli/nvim-colorizer.lua'

    Plug 'wesQ3/vim-windowswap'

    Plug 'junegunn/goyo.vim'

    Plug 'mhinz/vim-startify'

    Plug 'jiangmiao/auto-pairs'

    Plug 'christianchiarulli/nvcode-color-schemes.vim'

    Plug 'nvim-treesitter/nvim-treesitter'

    Plug 'tpope/vim-commentary'

    Plug 'tpope/vim-speeddating'

    Plug 'unblevable/quick-scope'

    Plug 'machakann/vim-highlightedyank'

    Plug 'ChristianChiarulli/vscode-easymotion'

    Plug 'sheerun/vim-polyglot'

    Plug 'nvim-treesitter/playground'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }

    Plug 'junegunn/fzf.vim'

    Plug 'airblade/vim-gitgutter'

    Plug 'tpope/vim-fugitive'

    Plug 'francoiscabrol/ranger.vim'

    Plug 'rbgrouleff/bclose.vim'

    Plug 'tpope/vim-rhubarb'

    Plug 'junegunn/gv.vim'

    Plug 'rhysd/git-messenger.vim'

    Plug 'mbbill/undotree'

call plug#end()

luafile $HOME/.config/nvim/lua/statusline.lua

" configure treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

" configure nvcode-color-schemes
let g:nvcode_termcolors=256

syntax on
colorscheme snazzy " Or whatever colorscheme you make


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

set mouse=a
