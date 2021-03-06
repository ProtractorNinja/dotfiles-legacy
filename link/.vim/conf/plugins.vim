set nocompatible " be iMproved, required
filetype off     " required

if has('vim_starting')
  " set the runtime path to include NeoBundle and initialize
  " Might not be working on win32, needs testing
  if has("win32")
    set runtimepath+=~/vimfiles/bundle/neobundle.vim/
    let path='~/vimfiles/bundle'
    call neobundle#begin(expand(path))
  elseif has("unix")
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    let path='~/.vim/bundle/'
    call neobundle#begin(expand(path))
  endif
endif

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let NeoBundle manage NeoBundle, required
NeoBundle 'Shougo/neobundle.vim'

" PLUGINS
"NeoBundle 'terryma/vim-multiple-cursors'   " Just like sublime text!
"NeoBundle 'edsono/vim-matchit'             " Better matching with %
NeoBundle 'raimondi/delimitMate'            " Auto-match parens, etc.
NeoBundle 'airblade/vim-gitgutter'          " Git diffing info in the gutter
NeoBundle 'bling/vim-airline'               " Better status line
NeoBundle 'ctrlpvim/ctrlp.vim'              " File, buffer, mru finder
NeoBundle 'davidoc/taskpaper.vim'           " Just like in Taskpaper.
NeoBundle 'junegunn/vim-easy-align'         " Align text... easily.
NeoBundle 'kshenoy/vim-signature'           " Marks in the gutter
NeoBundle 'lokaltog/vim-easymotion'         " Super fast navigation!
NeoBundle 'majutsushi/tagbar'               " Show ctags
NeoBundle 'mhinz/vim-startify'              " Start menu!
NeoBundle 'plasticboy/vim-markdown'         " Markdown highlighting
"NeoBundle 'rhysd/clever-f.vim'              " Use f to repeat f instead of ;
NeoBundle 'scrooloose/nerdcommenter'        " Easy comments
NeoBundle 'scrooloose/nerdtree'             " File navigation
NeoBundle 'tpope/vim-fugitive'              " Git wrapper for VIM
NeoBundle 'tpope/vim-repeat'                " Dot works for plugins
NeoBundle 'tpope/vim-surround'              " Manipulate parens, quotes, etc.
NeoBundle 'wellle/targets.vim'              " More & smarter text objects
NeoBundle 'xolox/vim-misc'                  " Required for vim-shell (GVIM Windows)
NeoBundle 'xolox/vim-shell'                 " Actually fullscreen (GVIM Windows)
NeoBundle 'nathanaelkane/vim-indent-guides' " Show indents visually
NeoBundle 'godlygeek/csapprox'              " Approximate GUI colors for terminal
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim'
"NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'tpope/vim-abolish'               " Handle multiple variants of a word.
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-characterize'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'junegunn/rainbow_parentheses.vim'

" PLUGINS WITH COMPILATION SETTINGS

" Required for some Shougo plugins (like Unite's async functions)
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" Tab completion engine
NeoBundle 'Valloric/YouCompleteMe', {
\ 'build' : {
\     'mac' : './install.sh --clang-completer',
\     'unix' : './install.sh --clang-completer',
\     'linux' : './install.sh --clang-completer',
\     'windows' : './install.sh --clang-completer',
\     'cygwin' : './install.sh --clang-completer'
\    }
\ }

" SNIPPETS
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'              " Precompiled snippets

" COLORSCHEMES
NeoBundle 'tomasr/molokai'
NeoBundle 'pychimp/vim-luna'

" All of your Plugins must be added before the following line
call neobundle#end()         " required
filetype plugin indent on    " required
NeoBundleCheck               " Checks if any plugins need installing
" VUNDLE MANDATORY OPTIONS OVER; PLUGIN SETTINGS TO FOLLOW

" COLORS
colorscheme luna

" AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts            = 1 " Also fix the fonts
let g:airline_detect_whitespace          = 0 " Hide the trailing whitespace warning
set laststatus=2 " Always show the airline statusbar
set noshowmode   " Don't show the -- MODE -- indicator below airline
set encoding=utf-8

" EASYMOTION
let g:EasyMotion_smartcase        = 1 " Turn on case sensitive feature
let g:EasyMotion_enter_jump_first = 1 " Enter jumps to first match; works poorly

" STARTIFY
let g:startify_custom_header = [ 'VI VI VI THE EDITOR OF THE BEAST', '' ]

" EASY ALIGN
" Custom easy-easy-alignment delimiters:
"     " -- setting comments in VIMRC; ignores section-starting comments
let g:easy_align_delimiters = {
         \ '"': {
         \ 'pattern'       : '"',
         \ 'ignore_groups' : ['String'],
         \ 'filter'        : 'v/^\s*"[^"]*$'
         \ }
\ }

" SHELL
let g:shell_fullscreen_items = 'mT' " Leave the tabline alone!

" INDENT GUIDES
let g:indent_guides_auto_colors           = 0
let g:indent_guides_start_level           = 1
let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray14
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=gray13

" DELIMITMATE
let g:delimitMate_expand_space         = 1
let g:delimitMate_expand_inside_quotes = 1
let g:delimitMate_expand_cr            = 1
let g:delimitMate_jump_expansion       = 1
autocmd FileType vim let b:delimitMate_quotes = "' ` *"
autocmd FileType cpp let b:delimitMate_matchpairs = "(:),[:],{:}"
autocmd FileType latex let b:delimitMate_matchpairs = "`:',(:),[:],{:},<:>"

" UNITE
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" ULTISNIPS / YCM
" Stolen from http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
"let g:ycm_key_list_select_completion = ['<C-n>', '<Up>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Down>']

" Bind expand snippet to c-s
let g:UltiSnipsExpandTrigger = "<c-s>"

" RAINBOW
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" By default, colors will be picked from the current color scheme
" To override this behavior, define g:rainbow#colors as follows
" (The colors in the example were taken from VimClojure)
let g:rainbow#colors = {
      \   'dark': [
      \     ['yellow',  'orange1'     ],
      \     ['cyan',    'greenyellow' ],
      \     ['magenta', 'red'     ],
      \     ['red',     'springgreen1'],
      \     ['yellow',  'cyan1'       ],
      \     ['green',   'slateblue1'  ],
      \     ['magenta', 'green1'      ],
      \     ['green',   'yellow1'     ],
      \     ['cyan',    'magenta1'    ]
      \   ],
      \   'light': [
      \     ['darkyellow',  'orangered3'    ],
      \     ['darkgreen',   'orange2'       ],
      \     ['blue',        'yellow3'       ],
      \     ['darkmagenta', 'olivedrab4'    ],
      \     ['red',         'green4'        ],
      \     ['darkyellow',  'paleturquoise3'],
      \     ['darkgreen',   'deepskyblue4'  ],
      \     ['blue',        'darkslateblue' ],
      \     ['darkmagenta', 'darkviolet'    ]
      \   ]
      \ }
