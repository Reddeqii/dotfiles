set number
set nowrap

if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :Files<CR>
colorscheme catppuccin_mocha
" 1. Load the Catppuccin Mocha colorscheme
colorscheme catppuccin_mocha

" 2. Force Vim to use your regular terminal background
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
let g:startify_custom_header = startify#pad(readfile(expand('~/vim.txt')))
autocmd User StartifyReady setlocal nonumber norelativenumber | set laststatus=0
autocmd BufDelete <buffer> setlocal number | set laststatus=2
" Simplify MRU file path display
let g:startify_change_to_dir = 1
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU'] },
      \ ]
let g:startify_transform_path = 'v:val =~ "^\/home" ? fnamemodify(v:val, ":~:.") : v:val'
" Custom highlights for Startify text elements
highlight StartifyFile    ctermfg=white   guifg=#cdd6f4
highlight StartifyBracket ctermfg=blue    guifg=#89b4fa
highlight StartifyNumber  ctermfg=yellow  guifg=#f9e2af
" Pad and center the custom ASCII header
let g:startify_custom_header = startify#pad(readfile(expand('~/vim.txt')))

let g:airline_theme='base16_mocha'

set laststatus=0
