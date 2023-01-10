local opt = vim.opt

opt.expandtab = true

opt.backspace = { "indent", "eol", "start" }

opt.encoding = "utf-8"

opt.smartindent = true -- Insert indents automatically

opt.ignorecase = true
opt.smartcase = true -- Do not ignore case with capitals
opt.incsearch = true

opt.number = true

opt.mouse = "a"

opt.wrap = false

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.cmdheight = 2
opt.updatetime = 300

vim.opt.termguicolors = true

vim.cmd[[colorscheme base16-ayu-mirage]]
vim.cmd "set background=dark"
vim.cmd "set cursorline"
vim.cmd "set noshowcmd"
vim.cmd "set noshowmode"
vim.cmd "set cmdheight=1"

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
]])


