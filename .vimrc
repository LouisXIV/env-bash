scriptencoding utf-8

" =========== Begin Vundle =============
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/.vim/vundle_plugin')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ============================================================================
" Active plugins
" You can disable or add new ones here:
" Add all your plugins here (note older versions of Vundle used Bundle instead
" of Plugin)

" Plugins from github repos:

" Better file browser
Plugin 'scrooloose/nerdtree'
" Code commenter
Plugin 'scrooloose/nerdcommenter'
" Class/module browser
Plugin 'majutsushi/tagbar'
" Code and files fuzzy finder
Plugin 'kien/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Plugin 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
Plugin 'mattn/emmet-vim'
" Maybe the best Git integration
Plugin 'tpope/vim-fugitive'
" Tab list panel
Plugin 'kien/tabman.vim'
" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Consoles as buffers
Plugin 'rosenfeld/conque-term'
" Pending tasks list
Plugin 'fisadev/FixedTaskList.vim'
" Surround
Plugin 'tpope/vim-surround'
" Autoclose
Plugin 'Townk/vim-autoclose'
" Indent text object
Plugin 'michaeljsmith/vim-indent-object'
" Python mode (indentation, doc, refactor, lints, code checking, motion and
" operators, highlighting, run and ipdb breakpoints)
Plugin 'klen/python-mode'
" Better autocompletion
Plugin 'Shougo/neocomplcache.vim'
" Snippets manager (SnipMate), dependencies, and snippets repo
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
" awesome colorscheme
Plugin 'tomasr/molokai'
" Git/mercurial/others diff icons on the side of the file lines
Plugin 'mhinz/vim-signify'
" Automatically sort python imports
Plugin 'fisadev/vim-isort'
" Drag visual blocks arround
Plugin 'fisadev/dragvisuals.vim'
" Window chooser
Plugin 't9md/vim-choosewin'
" Python and other languages code checker
Plugin 'scrooloose/syntastic'
" Paint css colors with the real color
Plugin 'lilydjwg/colorizer'
" Relative numbering of lines (0 is the current line)
" (disabled by default because is very intrusive and can't be easily toggled
" on/off. When the plugin is present, will always activate the relative 
" numbering every time you go to normal mode. Author refuses to add a setting 
" to avoid that)
" Plugin 'myusuf3/numbers.vim'

" javascript complete after install the plugin, you must cd the install
" directory and run `npm install`, then add a .tern-project config file
" the doc at http://ternjs.net/doc/manual.html#vim
Plugin 'marijnh/tern_for_vim'
" Golang Plugins
Plugin 'fatih/vim-go'
" JSX syntax highlight.
Plugin 'mxw/vim-jsx'
" Markdown syntastic highlight
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Markdown realtime preview
" Before you want to use it, please run
" `sudo npm -g install instant-markdown-d`
Plugin 'suan/vim-instant-markdown'
" Handlebars syntax highlighting
Plugin 'mustache/vim-mustache-handlebars'
" Vue.js syntax and highlighting
Plugin 'tao12345666333/vim-vue'
" True Sublime Text style multiple selections for Vim
Plugin 'terryma/vim-multiple-cursors'

" Plugins from vim-scripts repos:

" Search results counter
Plugin 'IndexedSearch'
" XML/HTML tags navigation
Plugin 'matchit.zip'
" Gvim colorscheme
Plugin 'Wombat'
" Yank history navigation
Plugin 'YankRing.vim'





"Plugin 'tmhedberg/SimpylFold'
""let g:SimpylFold_docstring_preview=1

"Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'

"-Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'

"Plugin 'jistr/vim-nerdtree-tabs'
"let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"Plugin 'kien/ctrlp.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


"if has('gui_running')
"    set background=dark
"    colorscheme solarized
"else
"    "colorscheme zenburn
"endif


" All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" ============= End Vundle =============


" ========= Python Indent PEP8 =========
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css <here>:</here>
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
" ======= End Python Indent PEP8 =======


" === python with virtualenv support ===
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
" === python with virtualenv support ===


"程式碼折疊
"vim本身有支援程式碼折疊 可以使用空白鍵來折疊程式碼
"只要在.vimrc中加入下列指令
"folding:
"set foldenable
set nofoldenable
set foldmethod=syntax
set foldcolumn=0
"nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')

nnoremap <silent> <Space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

inoremap <F2> <C-O>za
nnoremap <F2> za
onoremap <F2> <C-C>za
vnoremap <F2> zf


" 檔案編碼
set encoding=utf-8
set fileencodings=utf-8,cp950

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.


colorscheme torte

if has("syntax")
  syntax on
  syntax enable
endif


" indent when moving to the next line while writing code
set autoindent


" Search result highlight
hi Search ctermbg=LightBlue ctermfg=white guibg=LightBlue
" Hight light the Searching word.
set hlsearch


" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark


" Programming Environemnt
"   no larger than column:80
"
highlight ColorColumn ctermbg=red ctermfg=white guibg=#592929
"let &colorcolumn=join(range(81,999),",")
"let &colorcolumn="81,".join(range(121,999),",")
let &colorcolumn="81,121"

"set cin

"  auto wrap at 80
set tw=80
set formatoptions+=t

"  Tab replacing
"  將文件中 Tab 取代成 Space
"  所有 Tab 用4個 Space 取代
set tabstop=4
"set ts=4

set shiftwidth=4
set expandtab

set ruler        " 顯示右下角設定值
set backspace=2  " 在 insert 也可用 backspace
set ic           " 設定搜尋忽略大小寫
set ru           " 第幾行第幾個字
set hlsearch     " 設定高亮度顯示搜尋結果
set incsearch    " 在關鍵字還沒完全輸入完畢前就顯示結果
set smartindent  " 設定 smartindent
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set history=100  " 保留 100 個使用過的指令
"set cursorline   " 顯示目前的游標位置

" Status bar settings
set laststatus=2
"set statusline=%f "tail of the filename
set statusline=%4*%<\%m%<[%f\%r%h%w]\[%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

set list
set listchars=tab:>·,trail:·
"highlight SpecialKey guifg=DarkGraya "修改 TAB 與行尾空白字元的顏色


" enable all Python syntax highlighting features
let python_highlight_all = 1


" Syntastic ------------------------------

" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" turn to next or previous errors, after open errors list
nmap <leader>n :lnext<CR>
nmap <leader>p :lprevious<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
" syntastic checker for javascript.
" eslint is the only tool support JSX.
" If you don't need write JSX, you can use jshint.
" And eslint is slow, but not a hindrance
" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']
" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous
" setting)
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'



" Set over length color
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/


" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set nu                  " Enable line number

"map <f9>     :Tlist<CR> " Enable/disable taglist with F9
map <Tab>    :tabn<CR>  " Go next tab
map <S-Tab>  :tabp<CR>  " Go previous tab



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
" The_setting_example_in_my_vimrc_file:-)                                      "
"                                                                              "
" // The switch of the Source Explorer                                         "
" nmap <F8> :SrcExplToggle<CR>
"                                                                              "
" // Set the height of Source Explorer window                                  "
 let g:SrcExpl_winHeight = 8
"                                                                              "
" // Set 100 ms for refreshing the Source Explorer                             "
 let g:SrcExpl_refreshTime = 1000
"                                                                              "
" // Set "Enter" key to jump into the exact definition context                 "
" let g:SrcExpl_jumpKey = "<ENTER>"
"                                                                              "
" // Set "Space" key for back from the definition context                      "
" let g:SrcExpl_gobackKey = "<SPACE>"
"                                                                              "
" // In order to avoid conflicts, the Source Explorer should know what plugins "
" // except itself are using buffers. And you need add their buffer names into "
" // below listaccording to the command ":buffers!"                            "
 let g:SrcExpl_pluginList = [
         \ "__Tag_List__",
         \ "_NERD_tree_"
     \ ]
"                                                                              "
" // Enable/Disable the local definition searching, and note that this is not  "
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. "
" // It only searches for a match with the keyword according to command 'gd'   "
" let g:SrcExpl_searchLocalDef = 1
"                                                                              "
" // Do not let the Source Explorer update the tags file when opening          "
 let g:SrcExpl_isUpdateTags = 0
"                                                                              "
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to "
" //  create/update a tags file                                                "
" let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
"                                                                              "
" // Set "<F12>" key for updating the tags file artificially                   "
" let g:SrcExpl_updateTagsKey = "<F12>"
"                                                                              "
" // Set "<F3>" key for displaying the previous definition in the jump list    "
" let g:SrcExpl_prevDefKey = "<F3>"
"                                                                              "
" // Set "<F4>" key for displaying the next definition in the jump list        "
" let g:SrcExpl_nextDefKey = "<F4>"
"                                                                              "
" Just_change_above_of_them_by_yourself:-)                                     "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" Trinity Setting
" Open and close all the three plugins on the same time
nmap <F8> :TrinityToggleAll<CR>

" Open and close the srcexpl.vim separately
nmap <F9> :TrinityToggleSourceExplorer<CR>

" Open and close the taglist.vim separately
nmap <F10> :TrinityToggleTagList<CR>

" Open and close the NERD_tree.vim separately
nmap <F11> :TrinityToggleNERDTree<CR>


"SnipMate
filetype on
filetype plugin on

"Showing trailing whitespace and spaces before a Tab:
highlight ExtraWhiteSpace ctermbg=red guibg=red
match ExtraWhiteSpace /\s\+$\| \+\ze\t/
autocmd BufWinEnter * match ExtraWhiteSpace /\s\+$\| \+\ze\t/
autocmd InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$t/
autocmd InsertLeave * match ExtraWhiteSpace /\s\+$\| \+\ze\t/
autocmd BufWinLeave * call clearmatches()

