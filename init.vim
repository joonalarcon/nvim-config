" Configuración esencial de Neovim

" Habilita el resaltado de la sintaxis
syntax enable

" Configurar resaltado de sintaxis para TypeScript y JavaScript
autocmd FileType typescript,javascript syntax sync fromstart




"enable Habilita la numeración de líneas
set number
set relativenumber

" Habilita el autoindentado
set autoindent

" Ajusta el ancho de tabulación a 2 espacios
set tabstop=2
set shiftwidth=2
set expandtab
set encoding=UTF-8
set guifont=MesloLGS\ NF:h12
set encoding=utf-8


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

"startify
Plug 'mhinz/vim-startify'

" Notificaciones
Plug 'rcarriga/nvim-notify'


Plug 'neoclide/coc.nvim', {'branch': 'release'}

" iconos para nvim
Plug 'ryanoasis/vim-devicons'

" Vim Airline para una barra de estado elegante
Plug 'vim-airline/vim-airline'

" NerdTree para explorar archivos y directorios
Plug 'preservim/nerdtree'

" EasyMotion para un movimiento rápido por el texto
Plug 'easymotion/vim-easymotion'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" vim CMP
Plug 'hrsh7th/nvim-cmp'


" Agregar el plugin del tema Nord
""Plug 'arcticicestudio/nord-vim'

" Agregar el plugin del tema Gruvbox
Plug 'morhetz/gruvbox'
"Plug 'arcticicestudio/nord-vim'
"Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
"Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
" Fin del archivo de inicio de Plugin
"Plug 'xero/miasma.nvim'
"Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
call plug#end()

" Configuración de plugins

colorscheme gruvbox
let g:gruvbox_constrast_dark = "hard"

" NerdTree
nnoremap <Leader>nt :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"  " Establece la posición de NERDTree a la derecha


" EasyMotion
map <Leader>s <Plug>(easymotion-overwin-line)
map <Leader>x <Plug>(easymotion-s2)



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


" configuraciones para la ejecucion de archivos python en nvim.
command! -nargs=0 Python :call RunPythonScript()

function! RunPythonScript()
    let l:python_script = expand('%')
    if l:python_script =~# '\.py$'
        let l:output = systemlist('python3 ' . shellescape(l:python_script))
        for line in l:output
            echomsg line
        endfor
    else
        echo "El archivo no es un script de Python."
    endif
endfunction



