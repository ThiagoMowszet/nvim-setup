" Si usamos nvim en windows, tenemos que agregar en el JSON, los siguientes valores, para que los bordes desaparezcan: 
" padding: 0, 0, 0, 0,
" scrollbarState": hidden

" CONFIGURACIONES BASICAS

set number "Seteo los numeros
set mouse=a "Seteo el uso del mouse
syntax enable "Seteo la sintaxis
set showcmd "Seteo para que muestre los comandos de la terminal
set encoding=utf-8 "Seteo la codificacion
set relativenumber "Seteo los numeros relativos
set noswapfile "para evitar el mensaje que sale al abrir algunos archivos sobre swap
set clipboard+=unnamedplus "para poder utilizar el portapapeles del sistema operativo. Nos permite poder copiar y pegar desde cualquier parte a nvim y viceversa
set sw=4 "la indentación genera 4 espacios
set nocompatible "Para poder mejorar la sintaxis
set noshowmode
set incsearch
set scrolloff=8
set signcolumn=yes



" CONFIGURACION DE PLUGINS

call plug#begin('~/AppData/Local/nvim/Plugins')

Plug 'sainnhe/gruvbox-material' "Tema: Gruvbox
Plug 'sheerun/vim-polyglot' "Polyglot: para el mejorar el highlighting
Plug 'nvim-lualine/lualine.nvim' "Bar: Lualine
Plug 'jiangmiao/auto-pairs' "Autocompletado de simbolos
Plug 'alvan/vim-closetag' "Autocompletado de tags
Plug 'michaelb/sniprun', {'do': 'bash install.sh'} "Code Runner
Plug 'Yggdroot/indentLine' "Mejorar la indentacion
Plug 'Pocco81/auto-save.nvim' "Autosave
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Autocomplete plugin
Plug 'neovim/nvim-lspconfig'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'nvim-tree/nvim-web-devicons' 
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()





" CONFIGURACION DEL TEMA 

if has('termguicolors')
      set termguicolors
endif

set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material


"Lualine 

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


lua << EOF
require("toggleterm").setup{}
EOF
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

nnoremap <F3> :ToggleTerm<CR>

"TODO personalizar la configuracion de NERDtree 
"TODO configurar sniprun
"TODO mejorar la colorizacion de los simbolos [{()}]
"TODO cambiar el background a transparente
"TODO mejorar la fuente y corregir los errores de corte




"agregar mejorar los brackets
"agregar snipets
"agregar manejo de errores
"agregar terminal incluida
" agregar manejo de ventanas
" agregar indentacion - LISTO
" agregar format document - LISTO
" agregar autosave - LISTO
" agregar git config
