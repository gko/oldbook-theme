" Vim Colorscheme: oldbook
" Maintainer: Konstantin Gorodinskii, Gemini
" Version: 1.3
" A theme inspired by the feel of aged books. Minimal, soft, and readable.
" Version 1.3 adjusts the background from yellowish to a calmer, neutral beige.

" --- Setup ---
set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "oldbook"


" --- Palette ---
" Inspired by aged paper and various shades of faded ink.
" Main background (Neutral Beige Paper)
let s:paper         = "#fcf5e6"  " or #fbf4e8
let s:ink           = "#585040"  " Main foreground (Standard Ink)
let s:light_ink     = "#9a8f7d"  " Lighter text for comments, line numbers (Faded Ink)

" Subtle color variations
let s:keyword_ink   = "#70553a"  " Warm, sepia ink for keywords
let s:function_ink  = "#5e6a75"  " Cool, slate ink for functions & types
let s:literal_ink   = "#72785b"  " Earthy, faded green for strings & numbers

" UI colors
let s:selection     = "#e4d8bA"  " A subtle, low-contrast selection color
" A barely-there line highlight for the new paper
let s:line_hl       = "#f3ece1" " or #f2ebe1
let s:error_curl    = "#c48484"  " A muted red for error underlining


" --- Helper for Highlighting ---
" A function to keep our highlight definitions clean.
function! s:HL(group, guifg, guibg, gui, guisp)
  let cmd = "hi " . a:group
  if a:guifg != "" && a:guifg != "NONE"
    let cmd .= " guifg=" . a:guifg
  else
    let cmd .= " guifg=NONE"
  endif
  if a:guibg != "" && a:guibg != "NONE"
    let cmd .= " guibg=" . a:guibg
  else
    let cmd .= " guibg=NONE"
  endif
  if a:gui != "" && a:gui != "NONE"
    let cmd .= " gui=" . a:gui
  else
    let cmd .= " gui=NONE"
  endif
  if a:guisp != "" && a:guisp != "NONE"
    let cmd .= " guisp=" . a:guisp
  endif
  execute cmd
endfunction


" --- UI Highlighting ---
" Defines the look of the editor itself.

" Core UI
call s:HL("Normal", s:ink, s:paper, "NONE", "NONE")
call s:HL("Cursor", s:paper, s:ink, "NONE", "NONE")
call s:HL("CursorLine", "NONE", s:line_hl, "NONE", "NONE")
call s:HL("Visual", "NONE", s:selection, "NONE", "NONE")
call s:HL("ColorColumn", "NONE", s:line_hl, "NONE", "NONE")

" Gutters and Splits
call s:HL("LineNr", s:light_ink, s:paper, "NONE", "NONE")
call s:HL("CursorLineNr", s:ink, s:line_hl, "bold", "NONE")
call s:HL("SignColumn", s:light_ink, s:paper, "NONE", "NONE")
call s:HL("Folded", s:light_ink, s:line_hl, "italic", "NONE")
call s:HL("FoldColumn", s:light_ink, s:paper, "NONE", "NONE")
call s:HL("VertSplit", s:light_ink, s:paper, "NONE", "NONE")

" Status & Tab Line (like a book's header/footer)
call s:HL("StatusLine", s:paper, s:ink, "NONE", "NONE")
call s:HL("StatusLineNC", s:light_ink, s:ink, "NONE", "NONE")
call s:HL("TabLine", s:light_ink, s:line_hl, "NONE", "NONE")
call s:HL("TabLineFill", "NONE", s:line_hl, "NONE", "NONE")
call s:HL("TabLineSel", s:ink, s:selection, "bold", "NONE")

" Pop-up Menu
call s:HL("Pmenu", s:ink, s:line_hl, "NONE", "NONE")
call s:HL("PmenuSel", s:ink, s:selection, "bold", "NONE")
call s:HL("PmenuSbar", "NONE", s:line_hl, "NONE", "NONE")
call s:HL("PmenuThumb", "NONE", s:selection, "NONE", "NONE")

" General
call s:HL("Directory", s:keyword_ink, "NONE", "bold", "NONE")
call s:HL("Title", s:keyword_ink, "NONE", "bold", "NONE")
call s:HL("Question", s:keyword_ink, "NONE", "bold", "NONE")
call s:HL("MatchParen", "NONE", s:selection, "bold", "NONE")
call s:HL("Search", s:ink, s:selection, "NONE", "NONE")
call s:HL("IncSearch", s:paper, s:keyword_ink, "bold", "NONE")
call s:HL("WildMenu", s:paper, s:ink, "bold", "NONE")
call s:HL("NonText", s:light_ink, "NONE", "NONE", "NONE")
call s:HL("SpecialKey", s:light_ink, "NONE", "NONE", "NONE")

" --- Syntax Highlighting ---
" The focus is on subtle ink variations and typography.

call s:HL("Comment", s:light_ink, "NONE", "italic", "NONE")
call s:HL("Todo", s:paper, s:keyword_ink, "bold", "NONE")

" Keywords and Statements (warm, sepia ink, bolded)
call s:HL("Statement", s:keyword_ink, "NONE", "bold", "NONE")
hi! link Keyword Statement
hi! link Operator Statement
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement

" Functions and Types (cool, slate ink)
call s:HL("Function", s:function_ink, "NONE", "NONE", "NONE")
call s:HL("Type", s:function_ink, "NONE", "italic", "NONE")
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type

" Literals (earthy, green ink)
call s:HL("Constant", s:literal_ink, "NONE", "NONE", "NONE")
hi! link String Constant
hi! link Character Constant
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

" Floats
call s:HL("NormalFloat", s:ink, s:line_hl, "NONE", "NONE")
call s:HL("TelescopeNormal", s:ink, s:line_hl, "NONE", "NONE")

" Other
call s:HL("Identifier", s:ink, "NONE", "NONE", "NONE") " Standard ink for variables
call s:HL("PreProc", s:light_ink, "NONE", "NONE", "NONE")
call s:HL("Special", s:keyword_ink, "NONE", "NONE", "NONE")
call s:HL("Underlined", s:ink, "NONE", "underline", "NONE")

" Errors and Diffs
call s:HL("Error", s:ink, s:selection, "bold", "NONE")
call s:HL("ErrorMsg", s:paper, s:error_curl, "bold", "NONE")
call s:HL("WarningMsg", s:paper, s:keyword_ink, "bold", "NONE")
call s:HL("DiffAdd", "NONE", "#e1e9e1", "NONE", "NONE")
call s:HL("DiffDelete", "NONE", "#e9e1e1", "NONE", "NONE")
call s:HL("DiffChange", "NONE", "#dfe2e9", "NONE", "NONE")
call s:HL("DiffText", s:ink, "#cdd7e9", "bold", "NONE")

" LSP / CoC Diagnostics
call s:HL("LspDiagnosticsDefaultError", s:error_curl, "NONE", "NONE", "NONE")
call s:HL("LspDiagnosticsUnderlineError", "NONE", "NONE", "underline", s:error_curl)


" --- Cleanup ---
delfunction s:HL
