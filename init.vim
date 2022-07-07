" PLug

call plug#begin()
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'itchyny/lightline.vim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
},
  indent = {
    enable = true
  },
}
--local colors = require("tokyonight.colors").setup({})
--local utils = requires("tokyonight.util")

--aplugin.background = colors.bg_dark
--aplugin.my_error = util.brighten(colors.red1, 0.3)
EOF
call plug#end()


" Neovim settings
source ~/.config/nvim/configs/options.vim

" Plugins Setting

" Enable theme for Lightline
let g:lightline = {'colorscheme': 'tokyonight' }

" Treesitter Folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" Theme settings
set background="dark"
let g:tokyonight_style = "night"




