vim.g.mapleader = ','

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

-- Theme
require('zephyr')

-- Keybindings
local map = vim.api.nvim_set_keymap

map('n', '<C-l>', ':noh<CR>', {noremap = true}) -- clear highlighting

map('v', '<leader>y', '"+y', {noremap = true}) -- copy into system clipboard
map('n', '<leader>p', '"+p', {noremap = true}) -- paste from system clipboard

map('n', '<leader>nn', ':NERDTreeToggle<CR>', {noremap = true}) -- toggle nerd tree 
map('n', '<leader>nf', ':NERDTreeFind<CR>', {noremap = true}) -- find in nerd tree 

-- Telescope
vim.cmd [[
    nnoremap <C-p> <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>

    " Completion
    " Better completion
    " menuone: popup even when there's only one match
    " noinsert: Do not insert text until a selection is made
    " noselect: Do not select, force user to select one from the menu
    set completeopt=menuone,noinsert,noselect
]]

-- stops the nerd tree buffer from being overwritten
vim.cmd [[
    autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
        \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
]]

require('specs').setup{ 
    show_jumps  = true,
    min_jump = 30,
    popup = {
        delay_ms = 0, -- delay before popup displays
        inc_ms = 10, -- time increments used for fade/resize effects 
        blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
        width = 10,
        winhl = "PMenu",
        fader = require('specs').linear_fader,
        resizer = require('specs').shrink_resizer
    },
    ignore_filetypes = {},
    ignore_buftypes = {
        nofile = true,
    },
}
