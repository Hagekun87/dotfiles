" Configuración bufferline y lualine


lua << END
require("bufferline").setup{}
require('lualine').setup{
  options = { theme = 'horizon' },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding'},
    lualine_y = {'filetype'},
    lualine_z = {'location'}
  }
}
END
