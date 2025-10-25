" Name: Highlight Scapple Colorscheme 
" Author: mmzeeman (on Github)
" URL: https://github.com/mmzeeman/git-highlight
" (see this url for latest release & screenshots)
" License: OSI approved MIT license

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "highlight-scapple"

set background=light

" This theme depends on termguicolors being set.

" Colors taken from Scapple... 

let s:palette = {}

let s:palette.active    = '#e16500' " Dark orange from selected item in scapple
let s:palette.bg        = '#fffdf5' " Yellowish
let s:palette.fg        = '#000000' " Black

let s:palette.magenta   = '#fedbff' " Pink Bubble
let s:palette.yellow    = '#faedaf' " Yellow Bubble
let s:palette.red       = '#ffd4d4' " Red Bubble
let s:palette.orange    = '#ffc78a' " Orange, not originally in Scapple, but fits.
let s:palette.blue      = '#c8ebfe' " Blue Bubble
let s:palette.green     = '#c8f9b0' " Green Bubble
let s:palette.darkgreen = '#abd698' " Darker Green 

let s:palette.visual    = '#ffd8b3' " Orangy, default select color for text

let s:palette.darkblue  = '#000090'

" Editor
execute "hi Normal"       "guifg=".s:palette.fg     "guibg=".s:palette.bg
execute "hi Cursor"       "guifg=".s:palette.active "guibg=".s:palette.orange
execute "hi CursorLine"   "guifg=NONE"              "guibg=NONE"
execute "hi LineNr"       "guifg=gray"              "guibg=NONE"
execute "hi CursorLineNR" "guifg=NONE"              "guibg=NONE"

" Number
execute "hi CursorColumn" "guifg=NONE" "guibg=NONE"
execute "hi FoldColumn"   "guifg=NONE" "guibg=NONE"
execute "hi SignColumn"   "guifg=NONE" "guibg=NONE"
execute "hi Folded"       "guifg=NONE" "guibg=NONE"

" window/tab delimiters
execute "hi VertSplit"   "guifg=NONE"  "guibg=".s:palette.magenta
execute "hi ColorColumn" "guifg=NONE"  "guibg=".s:palette.magenta
execute "hi TabLine"     "guifg=NONE"  "guibg=".s:palette.magenta
execute "hi TabLineFill" "guifg=NONE"  "guibg=".s:palette.magenta
execute "hi TabLineSel"  "guifg=NONE"  "guibg=".s:palette.visual

" File Navigation / Searching
execute "hi Directory"   "guifg=NONE" "guibg=NONE"
execute "hi Search"      "guifg=NONE" "guibg=".s:palette.orange
execute "hi IncSearch"   "guifg=NONE" "guibg=".s:palette.orange

" Prompt/Status
execute "hi StatusLine"   "guifg=NONE" "guibg=".s:palette.magenta
execute "hi StatusLineNC" "guifg=NONE" "guibg=".s:palette.magenta
execute "hi WildMenu"     "guifg=NONE" "guibg=NONE"
execute "hi Quesion"      "guifg=NONE" "guibg=NONE"
execute "hi Title"        "guifg=NONE" "guibg=".s:palette.magenta
execute "hi ModeMsg"      "guifg=NONE" "guibg=NONE"
execute "hi MoreMsg"      "guifg=NONE" "guibg=NONE"

" Visual aid
execute "hi MatchParen"  "guifg=white" "guibg=".s:palette.active
execute "hi Visual"      "guifg=NONE"  "guibg=".s:palette.visual
execute "hi VisualNOS"   "guifg=NONE"  "guibg=".s:palette.visual
execute "hi NonText"     "guifg=NONE"  "guibg=NONE"

execute "hi Todo"        "guifg=NONE"          "guibg=".s:palette.yellow
execute "hi Underlined"  "guifg=NONE"          "guibg=NONE"
execute "hi Error"       "guifg=".s:palette.fg "guibg=".s:palette.red
execute "hi ErrorMsg"    "guifg=".s:palette.fg "guibg=".s:palette.red
execute "hi WarningMsg"  "guifg=".s:palette.fg "guibg=".s:palette.yellow
execute "hi Ignore"      "guifg=NONE"          "guibg=NONE"
execute "hi SpecialKey"  "guifg=NONE"          "guibg=NONE"

" Variable types
execute "hi Constant"        "guifg=NONE" "guibg=NONE"
execute "hi String"          "guifg=NONE" "guibg=".s:palette.green
execute "hi StringDelimiter" "guifg=NONE" "guibg=".s:palette.green
execute "hi Character"       "guifg=NONE" "guibg=".s:palette.magenta
execute "hi Number"          "guifg=NONE" "guibg=".s:palette.magenta
execute "hi Boolean"         "guifg=NONE" "guibg=".s:palette.magenta
execute "hi Float"           "guifg=NONE" "guibg=".s:palette.magenta

execute "hi Identifier"      "guifg=NONE" "guibg=NONE"
execute "hi Function"        "guifg=NONE" "guibg=NONE"

" Language constructs
execute "hi Statement"       "gui=NONE" "guifg=NONE" "guibg=NONE"

execute "hi Conditional"     "guifg=NONE" "guibg=NONE"
execute "hi Repeat"          "guifg=NONE" "guibg=NONE"
execute "hi Label"           "guifg=NONE" "guibg=NONE"
execute "hi Operator"        "guifg=NONE" "guibg=NONE"
execute "hi Keyword"         "guifg=NONE" "guibg=NONE"

execute "hi Exception"       "guifg=NONE" "guibg=".s:palette.red
execute "hi Comment"         "guifg=NONE" "guibg=".s:palette.yellow

execute "hi Special"         "guifg=NONE" "guibg=NONE"
execute "hi SpecialChar"     "guifg=NONE" "guibg=".s:palette.darkgreen

execute "hi Tag"             "guifg=NONE" "guibg=NONE"
execute "hi Delimiter"       "guifg=NONE" "guibg=NONE"
execute "hi SpecialComment"  "guifg=NONE" "guibg=NONE"
execute "hi Debug"           "guifg=NONE" "guibg=NONE"

" C like
execute "hi PreProc"         "guifg=NONE" "guibg=NONE"
execute "hi Include"         "guifg=NONE" "guibg=NONE"
execute "hi Define"          "guifg=NONE" "guibg=".s:palette.blue
execute "hi Macro"           "guifg=NONE" "guibg=NONE"
execute "hi PreCondit"       "guifg=NONE" "guibg=NONE"

execute "hi Type"            "guifg=NONE" "guibg=".s:palette.blue
execute "hi StorageClass"    "guifg=NONE" "guibg=".s:palette.blue
execute "hi Structure"       "guifg=NONE" "guibg=".s:palette.blue
execute "hi Typedef"         "guifg=NONE" "guibg=".s:palette.blue

" Diff
execute "hi DiffAdd"         "guifg=NONE" "guibg=NONE"
execute "hi DiffChange"      "guifg=NONE" "guibg=NONE"
execute "hi DiffDelete"      "guifg=NONE" "guibg=NONE"
execute "hi DiffText"        "guifg=NONE" "guibg=NONE"

" Completion menu
execute "hi Pmenu"           "guifg=NONE" "guibg=NONE"
execute "hi PmenuSel"        "guifg=NONE" "guibg=NONE"
execute "hi PmenuSbar"       "guifg=NONE" "guibg=NONE"
execute "hi PmenuThumb"      "guifg=NONE" "guibg=NONE"

" Spelling
execute "hi SpellBad"        "guifg=NONE" "guibg=NONE"
execute "hi SpellCap"        "guifg=NONE" "guibg=NONE"
execute "hi SpellLocal"      "guifg=NONE" "guibg=NONE"
execute "hi SpellRare"       "guifg=NONE" "guibg=NONE"

" Fixes for commonly used tags
execute "hi HTMLEndTag"         "guifg=NONE" "guibg=NONE"
execute "hi HTMLSpecialTagName" "guifg=NONE" "guibg=NONE"

execute "hi ErlangAtom"         "guifg=NONE" "guibg=NONE"
execute "hi ErlangQuotedAtom"   "guifg=NONE" "guibg=NONE"
execute "hi ErlangAttribute"    "guifg=NONE" "guibg=".s:palette.blue
execute "hi erlangRecordDef"    "guifg=NONE" "guibg=".s:palette.blue

hi def link erlangCommentAnnotation Comment
hi def link erlangCommentAnnotation Comment

execute "hi NERDTreeDirSlash" "guifg=NONE" "guibg=NONE"

