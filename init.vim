" Si usamos nvim en windows, tenemos que agregar en el JSON, los siguientes valores, para que los bordes desaparezcan: 
" padding: 0, 0, 0, 0,
" scrollbarState": hidden

" CONFIGURACIONES BASICAS

set number
set mouse=a
syntax enable
set showcmd
set encoding=utf-8
set relativenumber
set noswapfile
set clipboard+=unnamedplus
set sw=4
set nocompatible
set noshowmode
set incsearch
set scrolloff=8
set signcolumn=yes



" CONFIGURACION DE PLUGINS

call plug#begin('~/AppData/Local/nvim/Plugins')

Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lualine/lualine.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
Plug 'Pocco81/auto-save.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'nvim-tree/nvim-web-devicons' 
Plug 'nvim-tree/nvim-tree.lua'
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()





" CONFIGURACION DEL TEMA 

if has('termguicolors')
      set termguicolors
endif

set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material


"LUALINE BAR 

lua << EOF
require('lualine').setup {
  options = { theme  = 'gruvbox-material'}
}
EOF


" NVIM TREE

lua << EOF
require('nvim-tree').setup()
EOF

" Nvim-tree lua conf

lua << EOF
	require'nvim-tree'.setup{
	}
	require'nvim-web-devicons'.setup{
	 -- your personnal icons can go here (to override)
	 -- you can specify color or cterm_color instead of specifying both of them
	 -- DevIcon will be appended to `name`
	 override = {
	  zsh = {
	    icon = "",
	  }
	 };
	 -- globally enable default icons (default to false)
	 -- will get overriden by `get_icons` option
	 default = true;
	}
EOF

" Nvim-tree mappings
nnoremap <F4> :NvimTreeToggle<CR>



"CONFIGURANDO AL TECLA LIDER
let mapleader=","

"mapeando tecla para guardar rapido
nmap <leader>w :w<CR>
"mapeando tecla para salir rapido
nmap <leader>q :q<CR>



" AUTOSAVE

lua << EOF
require("auto-save").setup {
}
EOF


"LSP CONFIG

lua << EOF
require'lspconfig'.tsserver.setup{}
EOF


"COC CONFIG
let g:coc_global_extensions = ['coc-tsserver', 'coc-json']



" TOGGLETERM
lua << EOF
require("toggleterm").setup{}
EOF
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

nnoremap <F3> :ToggleTerm<CR>





lua << EOF
require("indent_blankline").setup {
      show_end_of_line = true,
}

EOF






"TODO configurar sniprun
"TODO mejorar la colorizacion de los simbolos [{()}]
"TODO cambiar el background a transparente
"TODO mejorar la fuente y corregir los errores de corte




"agregar mejorar los brackets
"agregar snipets
"agregar manejo de errores
"agregar terminal incluida - LISTO
" agregar manejo de ventanas
" agregar indentacion - LISTO
" agregar format document - LISTO
" agregar autosave - LISTO
" agregar git config - LISTO
