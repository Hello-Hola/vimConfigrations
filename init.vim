
set number
set mouse=a
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab 
set encoding=UTF-8


"configure emmet

let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-r>'



" plugins 
call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim' "Enable emmet featerues to html /css like ! Currently not working 
Plug 'voldikss/vim-floaterm' "Open floating terminal
Plug 'junegunn/vim-easy-align'
"Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
"Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
"Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
"Plug 'https://github.com/rstacruz/vim-closer' " For brackets autocompletion
Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
Plug 'wuelnerdotexe/vim-astro'
"Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}  
Plug 'nvim-telescope/telescope.nvim' "File Previewer
" Plugins for React and Tailwind CSS
Plug 'MaxMEllon/vim-jsx-pretty'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
call plug#end()

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Enable vim-jsx-pretty and vim-tailwindcss
autocmd FileType javascript,typescript,jsx,tsx setlocal tsx

"nerd maps enable when nerd maps are enabled =====
"nnoremap cf :NERDTreeFocus<CR>
"nnoremap cn :NERDTree<CR>
"nnoremap ct :NERDTreeToggle<CR>

" Remap jk to escape in insert mode
inoremap kj <Esc>

" Quickly switch between windows using Ctrl+Arrow keys
nnoremap sh <C-w>h
nnoremap sl <C-w>l
nnoremap sk <C-w>k
nnoremap sj <C-w>j


" Toggle line numbers
:nnoremap <leader>n :set nu!<CR>

" Toggle relative line numbers
nnoremap <leader>r :set rnu!<CR>

" Clear search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Copy to system clipboard
vnoremap <leader>y "+y

" Cut to system clipboard
vnoremap <leader>x "+x

" Paste from system clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p


"Floaterm configratins ===========
"let g:floaterm_keymap_new = '<Space>t'
let g:floaterm_keymap_toggle = '<Space>o'
let g:floaterm_keymap_prev   = '<Space>p'
let g:floaterm_keymap_next   = '<Space>n'

hi FloatermBorder guifg=cyan

" Open a terminal in Neovim
nnoremap <leader>t :term powershell.exe<CR>

"opne a newtab"
nnoremap <space>t :tabnew<CR>


" Save and close all tabs
nnoremap <Space>x :wa<Bar>qa<CR>

" Open NERDTree file explorer
nnoremap <Space>e :NERDTreeToggle<CR>

" Quick-save with Ctrl+s
nnoremap <C-s> :w<CR>

" Quick-save and run :w! with Ctrl+Shift+s
nnoremap <C-S-s> :w!<CR>

" Move to the beginning of the line
nnoremap B ^

" Move to the end of the line
nnoremap E $

" Move to the first non-blank character of the line
"nnoremap H ^

" Resize splits with Ctrl + arrow keys
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize +2<CR>
nnoremap <C-Right> :vertical resize -2<CR>

" Toggle between normal and insert mode for terminal
tnoremap kj <C-\><C-n>

" Navigate between tabs
nnoremap tn :tabnext<CR>
nnoremap tp :tabprev<CR>
nnoremap tt :tabnew<CR>
nnoremap tc :tabclose<CR>

" Move current line up/down in normal mode
nnoremap Ak :m .-2<CR>==
nnoremap Aj :m .+1<CR>==

"- use <tab> to trigger completion and navigate to the next complete item
"Comment start form here
"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" inoremap <silent><expr> <Tab>
"      \ pumvisible() ? "\<C-n>" :
"      \ CheckBackspace() ? "\<Tab>" :
"     \ coc#refresh()
" Comment end in here
