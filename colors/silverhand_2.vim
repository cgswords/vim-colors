highlight clear

if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "silverhand_2"
set t_Co=256

function! HighlightFor(group, ...)
  execute "hi ".a:group
        \ ." guifg=".a:1
        \ ." guibg=".a:2
        \ ." gui=".a:3
endfunction

" general
call HighlightFor("Normal",      "#deeb56", "#101116", "NONE") " old bg: #101116,
call HighlightFor("Visual",      "NONE",    "#344d9a", "NONE")
call HighlightFor("ColorColumn", "NONE",    "#182333", "NONE")
call HighlightFor("LineNr",      "#5E81F5", "NONE",    "NONE")
call HighlightFor("SignColumn",  "#00FFC8", "NONE",    "NONE")

call HighlightFor("DiffAdd",    "NONE", "NONE",    "NONE")
call HighlightFor("DiffDelete", "NONE", "#ff1745", "NONE" )
call HighlightFor("DiffText",   "NONE", "#00ff84", "NONE")
call HighlightFor("DiffChange", "NONE", "NONE",    "NONE")

call HighlightFor("VertSplit", "#6d9fff", "#101116", "NONE")

call HighlightFor("IncSearch",  "NONE", "#283593", "NONE")
call HighlightFor("Search",     "NONE", "#283593", "NONE")
call HighlightFor("Substitute", "NONE", "#283593", "NONE")

call HighlightFor("MatchParen", "NONE", "#F81Ce5", "NONE")
call HighlightFor("NonText",    "#2B3E5A", "NONE", "NONE")
call HighlightFor("Whitespace", "#2B3E5A", "NONE", "NONE")

call HighlightFor("WildMenu",  "#00FFC8", "NONE", "bold")
call HighlightFor("Directory", "#00FFC8", "NONE", "NONE")
call HighlightFor("Title",     "#c592ff", "NONE", "NONE")

" Cursor {{{
call HighlightFor("TermCursor",       "#F81CE5", "#F81CE5",    "NONE")
" call HighlightFor("CursorIM",       "#F81CE5", "#F81CE5",    "NONE")
" call HighlightFor("CursorLineNr", "#000000", "#F81CE5", "NONE")

" Cursorline type
if exists("g:cyberpunk_cursorline") && g:cyberpunk_cursorline == "black"
  call HighlightFor("CursorLine",   "NONE", "#000000", "NONE")
else
  call HighlightFor("CursorLine",   "#0a0d04", "#5E81F5", "NONE")
endif

call HighlightFor("CursorColumn", "NONE",    "NONE",    "NONE")
" }}}

" Code {{{
" The following groups are not builtin but are defined commonly in syntax files
call HighlightFor("Comment",   "#6766b3", "NONE", "NONE")
call HighlightFor("String",    "#dca0d9", "NONE", "NONE")
call HighlightFor("Number",    "#dca0d9",  "NONE", "NONE") " fffc58
call HighlightFor("Float",     "#dca0d9",  "NONE", "NONE") " abb823
call HighlightFor("Boolean",   "#dca0d9",  "NONE", "NONE")
call HighlightFor("Character", "#dca0d9",  "NONE", "NONE")

call HighlightFor("Conditional",  "#6d9fff", "NONE", "NONE")
call HighlightFor("Repeat",       "#6d9fff", "NONE", "NONE")
call HighlightFor("Label",        "#6d9fff", "NONE", "NONE")
call HighlightFor("Exception",    "#6d9fff", "NONE", "NONE")
call HighlightFor("Operator",     "#7c9edd", "NONE", "bold") " 8aebf1 ?
call HighlightFor("Keyword",      "#6d9fff", "NONE", "NONE") " old #d57bff
call HighlightFor("StorageClass", "#6d9fff", "NONE", "NONE")
call HighlightFor("Statement",    "#6d9fff", "NONE", "NONE") " 8aebf1

call HighlightFor("Function",   "#deeb56", "NONE", "NONE") " Most lang keywords get this color.
call HighlightFor("Identifier", "#EEFFFF", "NONE", "NONE")

call HighlightFor("PreProc", "#F81CE5", "NONE", "NONE")

call HighlightFor("Type",      "#4d7fdf", "NONE", "NONE") " 8988d5
call HighlightFor("Structure", "#6d9fff", "NONE", "NONE")
call HighlightFor("Typedef",   "#6d9fff", "NONE", "NONE")

call HighlightFor("Underlined", "NONE",    "NONE",    "NONE")
call HighlightFor("Todo",       "#F81CE5", "#372963", "italic")
call HighlightFor("Error",      "#ff3270", "NONE",   "undercurl")
call HighlightFor("WarningMsg", "#009550", "NONE",   "NONE")
call HighlightFor("Special",    "#deeb56", "NONE",   "NONE")
call HighlightFor("Tag",        "#F81CE5", "NONE",    "undercurl")
" }}}

" Pmenu {{{
call HighlightFor("Pmenu",      "#6d9fff", "#070811", "NONE")
call HighlightFor("PmenuSel",   "#0a0d04", "#5E81F5", "NONE")
call HighlightFor("PmenuSbar",  "NONE",    "#ff0055", "NONE")
call HighlightFor("PmenuThumb", "NONE",    "NONE",    "NONE")
" }}}

" Status line {{{
call HighlightFor("StatusLine",   "#6d9fff", "#1d000a", "bold")
call HighlightFor("StatusLineNC", "#6d9fff", "#000000", "NONE")
" }}}

" Tab pages {{{
call HighlightFor("TabLine",     "#FF4081", "NONE", "NONE")
call HighlightFor("TabLineFill", "NONE",    "NONE", "NONE")
call HighlightFor("TabLineSel",  "#FF4081", "NONE", "bold")
" }}}

" Folds {{{
call HighlightFor("Folded",     "#00FFC8", "NONE", "italic")
call HighlightFor("FoldColumn", "#00FFC8", "NONE", "NONE")
" }}}

