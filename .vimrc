"程式碼折疊
"vim本身有支援程式碼折疊 可以使用空白鍵來折疊程式碼
"只要在.vimrc中加入下列指令
"folding:
"set foldenable
"set foldmethod=syntax
"set foldcolumn=0
"nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')


" 檔案編碼
set encoding=utf-8
set fileencodings=utf-8,cp950

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.


colorscheme torte

if has("syntax")
  syntax on
endif


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

set statusline=%4*%<\%m%<[%f\%r%h%w]\[%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

set list
set listchars=tab:>·,trail:·
"highlight SpecialKey guifg=DarkGraya "修改 TAB 與行尾空白字元的顏色



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

