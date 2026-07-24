" Dependencies:
" -- My .vimrc.plug (on my GitHub)
" -- vim.txt (also on GitHub)

" Set relative line numbers
set relativenumber
" Turn text wrapping off
set nowrap

" Source the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif
" Disable arrow keys in Normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Disable arrow keys in Insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Bindings
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :Files<CR>
nnoremap <C-g> :Goyo<CR>
nnoremap <C-l> :Limelight<CR>
colorscheme catppuccin_mocha
" Catppuccin Mocha Syntax Highlighting
colorscheme catppuccin_mocha

" Force VIM to use default terminal background
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

" Startify header
autocmd User StartifyReady setlocal nonumber norelativenumber | set laststatus=0
autocmd FileType startify autocmd BufDelete <buffer> setlocal number | set laststatus=2

" Simplify MRU file path display
let g:startify_change_to_dir = 1
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU'] },
      \ ]

let g:startify_transform_path = 'v:val =~ "^\/home" ? fnamemodify() : v:val'
let g:limelight_conceal_ctermfg = 240

" Custom highlights for Startify text elements
highlight StartifyFile    ctermfg=white   guifg=#cdd6f4
highlight StartifyBracket ctermfg=blue    guifg=#89b4fa
highlight StartifyNumber  ctermfg=yellow  guifg=#f9e2af
" Load Startify header
let g:startify_custom_header = startify#pad(readfile(expand('~/vim.txt')))
" Tell Vim to treat anything inside the wal cache directory as a CSS file
autocmd BufNewFile,BufRead *\.cache/wal/* setfiletype css
" Fix transparency when toggling Goyo
autocmd! User GoyoEnter highlight Normal ctermbg=NONE guibg=NONE
autocmd! User GoyoLeave highlight Normal ctermbg=NONE guibg=NONE

set laststatus=0
