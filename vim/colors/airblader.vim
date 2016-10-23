"set background=dark hi clear
if exists("syntax_on")
    syntax reset
endif

    let colors_name = "airblader"

    hi Normal       ctermfg=252

    " Search
    hi IncSearch    ctermfg=0
    hi Search       ctermfg=0
    
    " Messages
    " TODO
    
    " Cursor
    "hi CursorLine
    hi Cursor       ctermfg=252
    hi CursorLineNr ctermfg=95
    
    " Syntax group
    hi Comment      ctermfg=245
    hi Constant     ctermfg=173
    hi Error        ctermfg=252
    hi Identifier   ctermfg=173
    hi Ignore       ctermfg=1  
    hi PreProc      ctermfg=179
    hi Special      ctermfg=137
    hi Statement    ctermfg=103
    hi Todo         ctermfg=3  ctermbg=30
    hi Type         ctermfg=131
    hi Underlined                           cterm=UNDERLINE
    hi Include      ctermfg=179
    hi Conditional  ctermfg=74
    hi String       ctermfg=35
    
    " Other
    hi Directory    ctermfg=252
    hi LineNr       ctermfg=242
    hi NonText      ctermfg=252
    hi SpecialKey   ctermfg=252
    hi Title        ctermfg=35
    hi Visual       ctermfg=7 ctermbg=23
    
    " Diff
    hi DiffAdd      ctermfg=15 
    hi DiffDelete   ctermfg=15 
    hi DiffChange   ctermfg=15 
    hi DiffText     ctermfg=15 
    hi diffAdded    ctermfg=113
    hi diffRemoved  ctermfg=1  
