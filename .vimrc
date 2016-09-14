" basic formatting stuff
    set number            " Turns on the line number bar on the left hand side.
    "set relativenumber    " Turns on the line numbering relative to the current line
    set ruler             " Turns on the line/column count in bottom left
    set hidden            " Does something with buffers. Better leave it.
    syntax on             " Turns syntax on...
    set nocompatible      " Gets rid of vi-like behavior. Makes vim do vim things
    set cursorline        " Highlights the current line of the cursor.
    set colorcolumn=80    " Shows a column at 80 characters
    set listchars=tab:>-,trail:~,extends:>,precedes:< " This shouws all weird hidden characters such as tab, and trail chars.
    set list              " Shows the above setting

" vundle directory map and plugin install
"----------------------------------- Vundle -----------------------------------
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
        Plugin 'gmarik/Vundle.vim'
        Plugin 'itchyny/lightline.vim'
        Plugin 'scrooloose/nerdtree'
        Plugin 'ervandew/supertab'
        Plugin 'justinmk/vim-syntax-extra'
        Plugin 'rust-lang/rust.vim'
        Plugin 'keith/swift.vim'
        Plugin 'dylon/vim-antlr'
        Plugin 'jiangmiao/auto-pairs'
        Plugin 'gosukiwi/vim-atom-dark'
    call vundle#end()
    filetype plugin indent on

"------------------------------- Color Scheme -------------------------------
    " Basic Settings for Color Schemes
    if ! has("gui_running")
        set t_Co=256
    endif
    set background=dark
    "set background=light

    " Atom Color Scheme
    colors atom-dark-256

"-------------------------- Lightline Configuration --------------------------
    set noshowmode
    " Make sure that the status bar is always on to show Lightline
    set laststatus=2
    " Configure Lightline
    let g:lightline = {
          \ 'colorscheme': 'seoul256',
          \ 'component': {
          \   'readonly': '%{&readonly?"":""}',
          \ },
          \ }


"------------------------------ Tab Indentation ------------------------------
    " Change ExtraWhitespace to purple because I hate Red
    highlight ExtraWhitespace ctermbg=60
" Changes tab size and uses spaces instead of tabs for easier formatting
    set tabstop=4     " Amount of spaces a tab takes up
    set softtabstop=4 " Amount of spaces a tab takes up
    set shiftwidth=4  " Something to do with indentation. Corresponds to the tabstop
    set expandtab     " Inserts spaces instead of tabs
    set smarttab      " Tabs to the last furthest tab
    set smartindent   " No idea but does something I like..?
    set backspace=indent,eol,start " This fixes the backspace issue with iTerm/Mac Things

"------------------------------- Key Remapping -------------------------------
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

"-------------------------------- Enable Mouse --------------------------------
" Allows for mouse usage inside of vim
    set mouse=a

"-------------------------------- Enable ANTLR --------------------------------
    au BufRead,BufNewFile *.g set filetype=antlr3
    au BufRead,BufNewFile *.g4 set filetype=antlr4