
set number
set mouse=a
set autoindent
set tabstop=2
set softtabstop=4
set shiftwidth=4
set smarttab 
set encoding=UTF-8

set omnifunc=syntaxcomplete#Complete

set omnifunc=javascriptcompleteCompleteJS
set omnifunc=htmlcomplete
set omnifunc=csscomplete

filetype on "Enable file type detction
filetype indent on "Load an indent file for the detceted file type
syntax on "Turn on synatx highliting
set cursorline "Highlight cursor line
set incsearch "Highlight search string matches
set ignorecase "Ignore case senstivity during search
set smartcase "Override the ignore case setting when searching for capital letters
set showcmd "Show partial command in the last line of the screen
set showmode "Show the mode on the last line of the screen

"Enable plugin and load plugin for the detected file type
filetype plugin on
"Enable omnicomplete features

"configure emmet
"let g:user_emmet_install_global = 0
"let g:user_emmet_leader_key='<C-r>'



" plugins 

call plug#begin('~/.vim/plugged')
" + Plug 'mattn/emmet-vim' "Enable emmet featerues to html /css like ! Currently not working 
Plug 'voldikss/vim-floaterm' "Open floating terminal

" ====note + means currenly removed======
" + Plug 'junegunn/vim-easy-align'
"Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
"Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
" + Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
"Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
"Plug 'https://github.com/rstacruz/vim-closer' " For brackets autocompletion
Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
" + Plug 'wuelnerdotexe/vim-astro'
" Plugins for React and Tailwind CSS
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'dense-analysis/ale' "This will provide linting and check syntax error in my code in react
"Plug 'neoclide/coc.nvim' "This will auto complte react typeing . 
" + Plug 'ctrlpvim/ctrlp.vim' "This is fuzzy finder it provid file finder



" ---- start

" Auto-close tags and brackets
Plug 'Townk/vim-autoclose'

" Extra syntax highlighting
Plug 'sheerun/vim-polyglot'

" vim-surround for surrounding pairs
Plug 'tpope/vim-surround'

" vim-closetag for auto-closing HTML tags
Plug 'alvan/vim-closetag'

" vim-vsnip for snippets
Plug 'hrsh7th/vim-vsnip'

" Optional: UltiSnips for more advanced snippet management
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" Configuration for vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.ts,*.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.ts,*.tsx'
let g:closetag_filetypes = 'html,xhtml,phtml,jsx,js,ts,tsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js,ts,tsx'
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'

" Configuration for vim-vsnip
let g:vsnip_snippet_dir = expand('~/.vim/vsnippets')

" Optional: Configuration for UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-b>'
let g:UltiSnipsJumpBackwardTrigger = '<c-z>'

" ---- end



" Enable vim-jsx-pretty and vim-tailwindcss
"autocmd FileType javascript,typescript,jsx,tsx setlocal tsx

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


" for tailwind

" Customize cursorline appearance
"highlight CursorLine cterm=bold ctermbg=blue guibg=#FFCCCC
"highlight CursorLine cterm=NONE ctermbg=236 guibg=#D6D2D2
"highlight CursorLine cterm=NONE ctermbg=236 guibg=#D2D2
"highlight CursorLine guibg=white guifg=black ctermbg=white ctermfg=black

" Customize cursorline appearance with a red background color and light gray texture

"highlight CursorLine guibg=lightgray ctermbg=gray

highlight CursorLine cterm=bold ctermbg=black guibg=#3c3836 "WorkingCurrent
