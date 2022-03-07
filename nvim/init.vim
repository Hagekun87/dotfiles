" Comandos específicos para NeoVim antes .vimrc

" Tecla comodín (leader)
let mapleader = "\<Space>" 

syntax on
set termguicolors        " Usa el esquema de colores especificado aqui en lugar del default
set updatetime=300       " Autocompletado mas rápido
set timeoutlen=200       " Mejora el feedback al meter comandos
set hidden               " Para mejorar el comportamiento de los buffers
set expandtab            " Configuración de el tab
set shiftwidth=3
set softtabstop=3
set laststatus=0         " Siempre imprime la linea de estatus
set cursorline           " Habilita la selección en la linea actual
set nobackup             " Recomendado por Coc
set nowritebackup        " Recomendado por Coc
set encoding=utf-8       " Configuración regional
set fileencoding=utf-8   " Configuración regional
set noswapfile           " No elabora archivos de respaldo al cerrar mal un archivo
set relativenumber       " Activa el numero relativo
set number               " Activa el numero de linea
set mouse=a              " Activa el uso de mouse
set autoindent           " Activa el autoindentado al dar nueva linea
set noshowmode           " Quita el indicador del modo actual (insert)
set cmdheight=2          " Expande la linea de comandos a 2 lineas
set conceallevel=0       " Muestra los caracteres ocultos en markdown como **
let g:vim_json_conceal=0 " Para que se vean las comillas en los archivos json

autocmd BufNewFile,BufRead *.recipe set filetype=markdown " Identificar archivos .recipe como de markdown

" Plugins de vim-plug
source ~/.configFiles/nvim/plugged/plugins.vim

" Coc settings
source ~/.configFiles/nvim/coc.vim

" Float term settings
source ~/.configFiles/nvim/floatterm.vim

" Glow settings
source ~/.configFiles/nvim/glow.vim

" Lua addons (bufferline, lualine) 
source ~/.configFiles/nvim/luaaddons.vim

" Configuración de tema
colorscheme aurora

" Navegación Vim
nnoremap <leader>q :q!<CR>
nnoremap <leader>w :w!<CR>

" Navegación buffers
map <leader>b :bn<CR>
map <leader>B :bd<CR>

" Navegación tabs
map <leader>h :tabprevious<CR>
map <leader>l :tabnext<CR>

" Corrector ortográfico
map <leader>s :set spell!<CR>
map <leader>S :set spelllang=en_us,es<CR>
map <leader>n :noh<CR>

" Navegación de NERDcommenter
let g:NERDSpaceDelims = 1
map <leader>c <plug>NERDCommenterToggle 
map <leader>, <plug>NERDCommenterAppend

" Keymaps para desplazamiento de linea
map <C-j> :move +1<CR>
map <C-k> :move -2<CR>

" Navegación entre los tabs
nnoremap <leader>k <C-u>
nnoremap <leader>j <C-d>

" Señalamiento de línea actual
hi CursorLineNr cterm=NONE ctermbg=8 ctermfg=NONE gui=NONE guibg=#272829 guifg=#5798f2
hi CursorColumn guibg=#353844
 
" Para agregar abreviaciones se usa :ab para hacerlo en insert mode :iab clave
source ~/.configFiles/nvim/abrevations.vim

" Para arreglar la compatibilidad con vimwiki y COC (problema con el tab)
au filetype vimwiki silent! iunmap <buffer> <Tab>

