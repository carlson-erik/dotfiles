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
        Plugin 'scrooloose/nerdtree'
        Plugin 'ervandew/supertab'
        Plugin 'justinmk/vim-syntax-extra'
        Plugin 'rust-lang/rust.vim'
        Plugin 'keith/swift.vim'
        Plugin 'itchyny/lightline.vim'
        Plugin 'morhetz/gruvbox'
        Plugin 'chriskempson/base16-vim'
    call vundle#end()
    filetype plugin indent on

"------------------------------- Color Scheme -------------------------------
    " Basic Settings for Color Schemes
    if ! has("gui_running")
        set t_Co=256
    endif
    set background=dark
    "set background=light

    " Gruvbox Color Scheme
    "colors gruvbox

    " Base 16 Tomorrow Theme
    let base16colorspace=256
    colors base16-tomorrow

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
    " Autoclose all brackets because all plugins suck
    " When { is pushed, it completes it, puts it on a new line,
    " and then puts you back inside of the bracket.
    "inoremap { {<CR>}<Esc>ko
    " When ( is pushed, it completes it, adds spaces and goes
    " to the middle of those spaces inside of the paren.
    inoremap ( ()<Left>
    " When [ is pushed, it completes it, and goes inside
    " of the brackets
    inoremap [ []<Left>

"-------------------------------- Enable Mouse --------------------------------
" Allows for mouse usage inside of vim
    set mouse=a
