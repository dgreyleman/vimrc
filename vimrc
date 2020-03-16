execute pathogen#infect()

set nowrap               	" don't wrap lines yo
set hlsearch 	        	" show highlighted search results
set incsearch           	" search as characters are entered? Maybe turn off if annoying
set smartcase               " use case in search if any caps used
set number 		            " show line numbers
colorscheme molokai 		" fun colors
syntax enable 		    	" enable syntax processing
set tabstop=4		    	" number of visual spaces per /t
set shiftwidth=4            " make indenting like a sane person
set softtabstop=4	    	" number of spaces per /t when editing
set expandtab		    	" make tabs = spaces like a sane person
set showcmd             	" show the most recent command in the bottom right
set cursorline          	" highlight current line somehow
filetype indent on      	" some wizardry to turn on filetype detection and load language specific indent files?
set wildmenu            	" some autocomplete bullshit? yes very nice :thumbsup:
set lazyredraw                  " only redraw when necessary I guess
set showmatch                   " highlight matching [{(_)}]
set backspace=indent,eol,start  " backspace like a human
set path+=**                    " set recursive search
set splitright                  " vsplit puts the new buffer to the right
set splitbelow                  " split puts the new buffer below

let mapleader = ","
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" not 100% sure about the following
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level. Run :help foldmethod for more info and types

" highlight most recently edited text
nnoremap gV `[v`] 

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>vh :vsp ~/.vim/help<CR>

" save session
nnoremap <leader>s :mksession<CR>

" ez recursive multiple file search for text
nnoremap <expr> <leader>si ":grep! -F \'" . input("") . "\' **/*." . printf(&filetype) . "<CR>:cw<CR>"
nnoremap <expr> <leader>sh ":grep! -F \'<C-R><C-W>\' **/*." . printf(&filetype) . "<CR>:cw<CR>"
autocmd! FileType qf nnoremap <buffer> <enter> <C-W><enter><C-W>L

