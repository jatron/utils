"Compatible mode means compatibility to venerable old vi. When you set
":set compatible, all the enhancements of Vi Improved are turned off.
set nocompatible              " be iMproved, required
"Disable file type detection. When you set :filetype on, each time a new or
"existing file is edited, Vim will try to recognize the type of the file and set
"the 'filetype' option. This will trigger the FileType event, which can be used
"to set the syntax highlighting, set options, etc.
filetype off                  " required

"Turn on color syntax highlighting
syntax enable
set background=dark
colorscheme solarized

set number
"Copy indent from current line when starting a new line
set autoindent
"Do smart indenting when starting a new line
set smartindent
"When smarttab is on, a <Tab> in front of a line inserts blanks according to
"shiftwidth
set smarttab
"Shiftwidth is referred to for 'levels of indentation', where a level of
"indentation is shiftwidth columns of whitespace
set shiftwidth=2
"Tabstop tells vim how many columns a <Tab> counts for
set tabstop=2
"Softtabstop is referred to for the <Tab> key and the backspace key. How much
"whitespace should be inserted when a <Tab> key is pressed. How much whitespace
"should be removed when a backspace key is pressed.
set softtabstop=2
"In Insert mode: Use the appropriate number of spaces to insert a <Tab>
set expandtab
"Highlight the screen line of the cursor
set cursorline
"When a bracket is inserted, briefly jump to the matching one
set showmatch
"Move down one displayed line instead of one physical line
nmap j gj
"Move up one displayed line instead of one physical line
nmap k gk
"Minimal number of screen lines to keep above and below the cursor
set scrolloff=8
"When there is a previous search pattern, highlight all its matches
set hlsearch
"If the 'ignorecase' option is on, the case of normal letters is ignored
set ignorecase
"Override the 'ignorecase' option if the search pattern contains uppercase
"characters
set smartcase
"Go to right window
nmap s <c-w>l
"Go to left window
nmap a <c-w>h
"Go to end of line
nmap y $
"Go to beginnig of line
nmap t 0
"Open file in same window
nmap f :e 
"Create new window
nmap c <c-w>v
nmap <space> :
imap jk <Esc>
set listchars=trail:·
"Display whitespace. :set list makes <Tab> characters appear as ^I
set list
set noswapfile
set textwidth=80

"Resources
"-https://medium.com/@arisweedler/tab-settings-in-vim-1ea0863c5990
"-http://vimdoc.sourceforge.net/htmldoc/filetype.html

