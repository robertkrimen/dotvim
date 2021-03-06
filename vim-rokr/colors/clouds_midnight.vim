" Vim color file
" Converted from Textmate theme Clouds Midnight using Coloration v0.2.4 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

            "NR-16   NR-8    COLOR NAME ~ 
            "0       0       Black
            "1       4       DarkBlue
            "2       2       DarkGreen
            "3       6       DarkCyan
            "4       1       DarkRed
            "5       5       DarkMagenta
            "6       3       Brown, DarkYellow
            "7       7       LightGray, LightGrey, Gray, Grey
            "8       0*      DarkGray, DarkGrey
            "9       4*      Blue, LightBlue
            "10      2*      Green, LightGreen
            "11      6*      Cyan, LightCyan  
            "12      1*      Red, LightRed
            "13      5*      Magenta, LightMagenta
            "14      3*      Yellow, LightYellow
            "15      7*      White

let g:colors_name = "clouds_midnight"

"hi Cursor           guifg=NONE    guibg=#7da5dc gui=NONE
"hi Visual           guifg=NONE    guibg=#000000 gui=NONE
"hi CursorLine       guifg=NONE    guibg=#1f1f1f gui=NONE
"hi CursorColumn     guifg=NONE    guibg=#1f1f1f gui=NONE
"hi ColorColumn      guifg=NONE    guibg=#1f1f1f gui=NONE
hi LineNr           guifg=#565656 guibg=#191919 gui=NONE ctermfg=DarkGray
"hi VertSplit        guifg=#303030 guibg=#303030 gui=NONE
"hi MatchParen       guifg=#927c5d guibg=NONE    gui=NONE
"hi StatusLine       guifg=#929292 guibg=#303030 gui=bold ctermfg=Gray
"hi StatusLineNC     guifg=#929292 guibg=#303030 gui=NONE ctermfg=Gray
"hi Pmenu            guifg=NONE    guibg=NONE    gui=NONE
hi PmenuSel         guifg=NONE    guibg=NONE gui=NONE ctermfg=Yellow ctermbg=Blue
"hi IncSearch        guifg=NONE    guibg=#413a2f gui=NONE
"hi Search           guifg=NONE    guibg=#413a2f gui=NONE
"hi Directory        guifg=NONE    guibg=NONE    gui=NONE
"hi Folded           guifg=#3c403b guibg=#191919 gui=NONE

"hi Normal           guifg=#929292 guibg=#191919 gui=NONE
"hi Boolean          guifg=#39946a guibg=NONE    gui=NONE
"hi Character        guifg=NONE    guibg=NONE    gui=NONE
"hi Comment          guifg=#3c403b guibg=NONE    gui=NONE
"hi Conditional      guifg=#927c5d guibg=NONE    gui=NONE
"hi Constant         guifg=NONE    guibg=NONE    gui=NONE
"hi Define           guifg=#927c5d guibg=NONE    gui=NONE
"hi ErrorMsg         guifg=#ffffff guibg=#e92e2e gui=NONE
"hi WarningMsg       guifg=#ffffff guibg=#e92e2e gui=NONE
"hi Float            guifg=#46a609 guibg=NONE    gui=NONE
"hi Function         guifg=NONE    guibg=NONE    gui=NONE
"hi Identifier       guifg=#e92e2e guibg=NONE    gui=NONE
"hi Keyword          guifg=#927c5d guibg=NONE    gui=NONE
"hi Label            guifg=#5d90cd guibg=NONE    gui=NONE
"hi NonText          guifg=#333333 guibg=NONE    gui=NONE
"hi Number           guifg=#46a609 guibg=NONE    gui=NONE
"hi Operator         guifg=#4b4b4b guibg=NONE    gui=NONE
"hi PreProc          guifg=#927c5d guibg=NONE    gui=NONE
"hi Special          guifg=#929292 guibg=NONE    gui=NONE
"hi SpecialKey       guifg=#bfbfbf guibg=#1f1f1f gui=NONE
"hi Statement        guifg=#927c5d guibg=NONE    gui=NONE
"hi StorageClass     guifg=#e92e2e guibg=NONE    gui=NONE
"hi String           guifg=#5d90cd guibg=NONE    gui=NONE
"hi Tag              guifg=#606060 guibg=NONE    gui=NONE
"hi Title            guifg=#929292 guibg=NONE    gui=bold
"hi Todo             guifg=#3c403b guibg=NONE    gui=inverse,bold
"hi Type             guifg=NONE    guibg=NONE    gui=NONE
"hi Underlined       guifg=NONE    guibg=NONE    gui=underline

