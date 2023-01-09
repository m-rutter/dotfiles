lua require('init')


" " from http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
if executable('rg')
	set grepprg=rg\ --no-heading\ --vimgrep
	set grepformat=%f:%l:%c:%m
endif

let mapleader = "\<Space>"

nnoremap <leader>o :Telescope find_files<CR>
nnoremap <Leader>w :w<CR>

vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>p "+p
vmap <leader>p "+p
vmap <leader>p "+p

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

