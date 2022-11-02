" CONFIGURACIONES BASICAS

set number "Seteo los numeros
set mouse=a "Seteo el uso del mouse
syntax enable "Seteo la sintaxis
set showcmd "Seteo para que muestre los comandos de la terminal
set encoding=utf-8 "Seteo la codificacion
set relativenumber "Seteo los numeros relativos
set noswapfile "para evitar el mensaje que sale al abrir algunos archivos sobre swap
set clipboard+=unnamedplus "para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa
set sw=4 "la indentación genera 4 espacios
set nocompatible "Para poder mejorar la sintaxis
set noshowmode




" CONFIGURACION DE PLUGINS

call plug#begin('~/AppData/Local/nvim/Plugins')

Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'

call plug#end()





" CONFIGURACION DEL TEMA 

if has('termguicolors')
    set termguicolors
endif

set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material






" CONFIGURACION DE LA BARRA

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
