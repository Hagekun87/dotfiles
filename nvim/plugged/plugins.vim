call plug#begin('~/.config/nvim/plugged')

" General Plugins
    Plug 'nvim-lualine/lualine.nvim'
		Plug 'kyazdani42/nvim-web-devicons'
		Plug 'akinsho/bufferline.nvim'
    Plug 'vimwiki/vimwiki'
    Plug 'ryanoasis/vim-devicons'                                          " VIM-DEVICONS icons for NERDTree
    Plug 'tpope/vim-surround'                                              " Modificación inteligente de signos de agrupación
    Plug 'preservim/nerdcommenter'                                         " NERDCommenter
    Plug 'tpope/vim-fugitive'                                              " Agrega status de git en vim
    Plug 'airblade/vim-gitgutter'                                          " Señala cambios en git de las lineas del archivo
    Plug 'neoclide/coc.nvim', {'branch': 'release'}                        " Autocompletador
    Plug 'kevinoid/vim-jsonc'                                              " Sugerencias para archivos json
    Plug 'godlygeek/tabular'                                               " Organiza las tabulaciones en las lineas
    Plug 'voldikss/vim-floaterm'                                           " Terminal flotante en vim
    Plug 'ellisonleao/glow.nvim', {'do': ':GlowInstall', 'branch': 'main'} " visualizador de archivos md
		Plug 'gyim/vim-boxdraw'
		
" Themes 
    Plug 'ray-x/aurora'
    Plug 'sainnhe/sonokai'                                                 " Tema de vim
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }                     " Tema de vim

call plug#end()
