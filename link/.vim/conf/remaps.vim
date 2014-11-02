" GENERAL REMAPS
noremap ; :
nnoremap j gj
nnoremap k gk

" No using simple directions! Use other movements instead.
"nnoremap h <NOP>
"nnoremap j <NOP>
"nnoremap k <NOP>
"nnoremap l <NOP>

" Save on ctrl-s, just like on windows!
nnoremap <C-S> :w<CR>

" Ctrl-] on Windows Programmers' Dvorak sends Ctrl-^ instead; fix it
nnoremap <C-^> <C-]>

" LEADER REMAPS
let mapleader=' '
nnoremap <SPACE> <NOP>

nnoremap <LEADER>s :source $MYVIMRC<CR>
nnoremap <silent> <LEADER><cr> :noh<cr>
nnoremap <LEADER>t :set cursorline! cursorcolumn!<CR>

" PLUGIN MANAGEMENT
noremap <LEADER>pi :PluginInstall<CR>
noremap <LEADER>pu :PluginUpdate<CR>
noremap <LEADER>pc :PluginClean<CR>

" EASY ALIGN
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

" EASY MOTION
"    Most easymotion binds are automatically set to <LEADER><LEADER><movement>
"    map instead of noremap is a necessity.
" Goto any line above or below
map <LEADER><LEADER>j <Plug>(easymotion-j)
map <LEADER><LEADER>k <Plug>(easymotion-k)
" Highlighted goto-whichever search
map  <LEADER><LEADER>/ <Plug>(easymotion-sn)
omap <LEADER><LEADER>/ <Plug>(easymotion-tn)

" FUGITIVE
noremap <LEADER>gs :Gstatus<CR>

" UNITE
nnoremap <LEADER>up :Unite -start-insert file_rec/async<cr>
nnoremap <LEADER>ug :Unite grep:.<CR>
nnoremap <LEADER>uy :Unite history/yank<CR>
nnoremap <LEADER>ub :Unite -quick-match buffer<CR>