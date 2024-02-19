" Habilitar la búsqueda incremental y el resaltado de la búsqueda
set incsearch
set hlsearch
" Ignorar mayúsculas y minúsculas al buscar, pero respetarlas si se utilizan mayúsculas
set ignorecase
set smartcase 

" Resaltado de sintaxis habilitado
syntax enable

" Mostrar números de línea y línea relativa
set number
set relativenumber

" Desplazamiento suave de línea y desplazamiento horizontal suave

set sidescrolloff=5

" Deshabilitar el mouse
set mouse=

" Tamaño del tabulador y conversión de tabulaciones a espacios
set tabstop=4
set shiftwidth=2
set expandtab

syntax enable
"Tecla lider
let mapleader = "\<Space>"


" Archivo: ~/.config/nvim/init.vim

" Establecer el directorio de almacenamiento de los plugins de vim-plug
call plug#begin('~/.config/nvim/plugged')

" Definir los plugins
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
" Finalizar la lista de plugins
call plug#end()


" Tema de colores de nvim
colorscheme gruvbox

" Configuración de Coc
" Permitir que Enter seleccione un snippet
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Configuración de nerdtree
nnoremap <leader>nt :NERDTreeToggle<CR>





