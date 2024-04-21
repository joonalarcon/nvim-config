" Configuración esencial de Neovim

" Habilita el resaltado de la sintaxis
syntax enable

" Habilita la numeración de líneas
set number
set relativenumber

" Habilita el autoindentado
set autoindent

" Ajusta el ancho de tabulación a 4 espacios
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=UTF-8
set guifont=MesloLGS\ NF:h12

" Habilita la búsqueda incremental
set incsearch

" Ignora las diferencias de mayúsculas/minúsculas durante la búsqueda
set ignorecase

" Habilita el autoindentado inteligente
set smartindent

" no mostrar la barra de informacion
set noshowmode

" Habilita el resaltado de la línea seleccionada
set cursorline

" Habilita la búsqueda incremental en la línea de comandos
set inccommand=split

" Define la tecla líder como espacio
let mapleader = "\<Space>"

" Configuración de Neovim con plugins

" Ubicación del archivo de inicio de Plug
call plug#begin('~/.local/share/nvim/plugged')

" Plugins

" Coc

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" iconos para nvim
Plug 'ryanoasis/vim-devicons'

" Vim Airline para una barra de estado elegante
Plug 'vim-airline/vim-airline'

" NerdTree para explorar archivos y directorios
Plug 'preservim/nerdtree'

" EasyMotion para un movimiento rápido por el texto
Plug 'easymotion/vim-easymotion'

" Agregar el plugin del tema Nord
""Plug 'arcticicestudio/nord-vim'

" Agregar el plugin del tema Gruvbox
Plug 'morhetz/gruvbox'



" Fin del archivo de inicio de Plug
call plug#end()

" Configuración de plugins

" Vim Airline
let g:airline#extensions#tabline#enabled = 1

" NerdTree
nnoremap <Leader>nt :NERDTreeToggle<CR>

" EasyMotion
map <Leader>s <Plug>(easymotion-overwin-line)

colorscheme gruvbox

let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }

" Opcional: Configurar las extensiones de Coc específicas que desees utilizar
let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-tsserver',
      \ 'coc-eslint',
      \ 'coc-python',
      \ 'coc-css',
      \ 'coc-html',
      \ ]

" Mapeo para elegir los snippets con la tecla Enter
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"




" Configurar Powerline con la fuente Nerd Fonts
let g:Powerline_symbols = 'nerdfonts'
let g:Powerline_dividerscheme = 'arrow'

" Configurar la fuente de Powerline
let g:Powerline_symbols_font = 'MesloLGS NF'

