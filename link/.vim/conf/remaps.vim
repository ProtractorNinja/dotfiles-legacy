" GENERAL REMAPS
nnoremap j gj
nnoremap k gk

" No using simple directions! Use other movements instead.
"nnoremap h <NOP>
"nnoremap j <NOP>
"nnoremap k <NOP>
"nnoremap l <NOP>

" Save on ctrl-s, just like on windows!
"nnoremap <C-S> :w<CR>

" Ctrl-] on Windows Programmers' Dvorak sends Ctrl-^ instead; fix it
nnoremap <C-^> <C-]>

" LEADER REMAPS
let mapleader=' '
nnoremap <SPACE> <NOP>

nnoremap <LEADER>s :source $MYVIMRC<CR>
nnoremap <silent> <LEADER><cr> :noh<cr>

" TOGGLES
nnoremap <LEADER>tc :set cursorline! cursorcolumn!<CR>
nnoremap <LEADER>tr :RainbowParentheses!!<CR>

" PLUGIN MANAGEMENT
noremap <LEADER>pi :NeoBundleInstall<CR>
noremap <LEADER>pu :NeoBundleUpdate<CR>
noremap <LEADER>pc :NeoBundleClean<CR>

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
omap <LEADER><LEADER>/ <Plug>(easymotion-tn)\n

" FUGITIVE
noremap <LEADER>gs :Gstatus<CR>

" UNITE
nnoremap <LEADER>u   <NOP>
nnoremap <LEADER>uf  :Unite -no-split -buffer-name=files     -start-insert file_rec/async<cr>
nnoremap <LEADER>ur  :Unite -no-split -buffer-name=registers -quick-match  register<cr>
nnoremap <LEADER>ugt :Unite -no-split -buffer-name=git-files -start-insert file_rec/git<cr>
nnoremap <LEADER>ub  :Unite -no-split -buffer-name=buffers   -start-insert buffer<CR>
nnoremap <LEADER>um  :Unite -no-split -buffer-name=mru       -start-insert neomru/file<cr>
nnoremap <LEADER>uw  :Unite -no-split -buffer-name=windows   -start-insert window<cr>
nnoremap <LEADER>ug  :Unite -buffer-name=grep grep:.<CR>
nnoremap <LEADER>uy  :Unite -buffer-name=yoink! history/yank<CR>

