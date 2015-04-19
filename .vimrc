" basic formatting stuff
    set number            " Turns on the line number bar on the left hand side.
    set ruler             " Turns on the line/column count in bottom left
    set hidden            " Does something with buffers. Better leave it.
    syntax on             " Turns syntax on...
    set nocompatible      " Gets rid of vi-like behavior. Makes vim do vim things
    set laststatus=2      " Makes sure the status bar is always on. (Need for vim-airline to show)

" vundle directory map and plugin install
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
        Plugin 'gmarik/Vundle.vim'
        Plugin 'scrooloose/nerdtree'
        Plugin 'ervandew/supertab'
        Plugin 'bling/vim-airline'
        Plugin 'gosukiwi/vim-atom-dark'
        Plugin 'chriskempson/base16-vim'
    call vundle#end()
    filetype plugin indent on

" colorscheme stuff if-endif allows for 256-bit mode
    if ! has("gui_running")
        set t_Co=256
    endif
    " Atom Dark Color Scheme 
    "colors atom-dark-256
    "let g:airline_theme='ubaryd'
    
    " Current Dark Base-16 Color Scheme 
    set background=dark
    colors base16-twilight
    let g:airline_theme='base16'
    
    " Solarized Base-16 Color Scheme
    "set background=dark
    "set background=light
    "colors base16-solarized
    "let g:airline_theme='solarized'

    " Settings that allow for vim-airline to do it's magic.
    " These settings assume powerline-fonts are installed to work.
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1
    set noshowmode

" Changes tab size and uses spaces instead of tabs for easier formatting
    set tabstop=2     " Amount of spaces a tab takes up
    set softtabstop=2 " Amount of spaces a tab takes up
    set shiftwidth=2  " Something to do with indentation. Corresponds to the tabstop
    set expandtab     " Inserts spaces instead of tabs
    set smarttab      " Tabs to the last furthest tab
    set smartindent   " No idea but does something I like..?
    set backspace=indent,eol,start " This fixes the backspace issue with iTerm/Mac Things

" Remaps
    " Open NerdTreeToggle
    map <C-u> :NERDTreeToggle <CR>
    " Switch between tabs with ease
    map <C-o> :tabnext<CR>
    " Switch between tabs with ease
    map <C-i> :tabprev<CR>
    " Should allow for movement to the end of the line no matter the mode
    map <C-d> <Esc>$
    " Should allow for movement to the beginning of the line no matter
    " the mode
    map <C-c> <Esc>^
    " Should allow for easier movement between vsplits
    "map <C-Left> <C-W>h<C-W>_
    "map <C-Right> <C-W>l<C-W>_
    map <C-H> <C-W>h<C-W>_
    map <C-L> <C-W>l<C-W>_
    " Should delete the word around or before the cursor
    imap <C-D> <C-[>diwi

" Autoclose all brackets because all plugins suck
    " When { is pushed, it completes it, puts it on a new line,
    " and then puts you back inside of the bracket.
    inoremap { {<CR>}<Esc>ko
    " When ( is pushed, it completes it, adds spaces and goes
    " to the middle of those spaces inside of the paren.
    inoremap ( ()<Left>
    " When [ is pushed, it completes it, and goes inside
    " of the brackets
    inoremap [ []<Left>

" Allows for mouse usage inside of vim #noob
    set mouse=a
