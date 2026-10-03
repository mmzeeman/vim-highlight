" Name: Highlight Stabilo Dark
" Author: mmzeeman (on Github)
" URL: https://github.com/mmzeeman/vim-highlight
" (see this url for latest release & screenshots)
" License: OSI approved MIT license

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "highlight-stabilo-original-dark"

set background=dark

" This theme depends on termguicolors being set.

" Dark variant of stabilo-original. The same reduced color set is used,
" but as foreground color on a dark background, instead of as a
" background color behind the text.

let s:palette = {}

let s:palette.bg        = '#1b191c' " Dark paper
let s:palette.fg        = '#e6e2e4' " Off white
let s:palette.gray      = '#6e6a6d' " Line numbers, non-text

" Colors for visual selection and matching parens (subdued, so text stays readable)
let s:palette.visual    = '#5c3149' " Dark pink
let s:palette.bar       = '#2c282e' " Status/tab lines (dark lavender-gray)
let s:palette.barsel    = '#5c3149' " Selected tab

" Same colors as stabilo-original, now used as foreground
let s:palette.magenta   = '#dcb5f8' " Lavender
let s:palette.yellow    = '#eaff9c' " Yellow
let s:palette.red       = '#fdcfbf' " Red
let s:palette.orange    = '#fed789' " Orange
let s:palette.blue      = '#87dee4' " Blue
let s:palette.green     = '#c9f6c3' " Green
let s:palette.darkgreen = '#82ed9c' " Green from a more saturated part (for SpecialChar)

" Editor
execute "hi Normal"       "guifg=".s:palette.fg     "guibg=".s:palette.bg
execute "hi Cursor"       "guifg=".s:palette.bg     "guibg=".s:palette.magenta
execute "hi CursorLine"   "guifg=NONE"              "guibg=NONE"
execute "hi LineNr"       "guifg=".s:palette.gray   "guibg=NONE"
execute "hi CursorLineNR" "guifg=NONE"              "guibg=NONE"

" Number
execute "hi CursorColumn" "guifg=NONE" "guibg=NONE"
execute "hi FoldColumn"   "guifg=NONE" "guibg=NONE"
execute "hi SignColumn"   "guifg=NONE" "guibg=NONE"
execute "hi Folded"       "guifg=NONE" "guibg=NONE"

" window/tab delimiters
execute "hi VertSplit"   "guifg=".s:palette.magenta "guibg=".s:palette.bar
execute "hi ColorColumn" "guifg=NONE"               "guibg=".s:palette.bar
execute "hi TabLine"     "guifg=".s:palette.magenta "guibg=".s:palette.bar
execute "hi TabLineFill" "guifg=NONE"               "guibg=".s:palette.bar
execute "hi TabLineSel"  "guifg=".s:palette.fg      "guibg=".s:palette.barsel

" File Navigation / Searching
execute "hi Directory"   "guifg=NONE"               "guibg=NONE"
execute "hi Search"      "guifg=".s:palette.orange  "guibg=".s:palette.bar
execute "hi IncSearch"   "guifg=".s:palette.orange  "guibg=".s:palette.bar "gui=reverse"

" Prompt/Status
execute "hi StatusLine"   "guifg=".s:palette.magenta "guibg=".s:palette.bar
execute "hi StatusLineNC" "guifg=".s:palette.gray    "guibg=".s:palette.bar
execute "hi WildMenu"     "guifg=NONE" "guibg=NONE"
execute "hi Question"     "guifg=NONE" "guibg=NONE"
execute "hi Title"        "guifg=".s:palette.magenta "guibg=NONE"
execute "hi ModeMsg"      "guifg=NONE" "guibg=NONE"
execute "hi MoreMsg"      "guifg=NONE" "guibg=NONE"

" Visual aid
execute "hi MatchParen"  "guifg=".s:palette.fg "guibg=".s:palette.visual
execute "hi Visual"      "guifg=NONE"          "guibg=".s:palette.visual
execute "hi VisualNOS"   "guifg=NONE"          "guibg=".s:palette.visual
execute "hi NonText"     "guifg=".s:palette.gray "guibg=NONE"

execute "hi Todo"        "guifg=".s:palette.yellow "guibg=NONE"
execute "hi Underlined"  "guifg=NONE"              "guibg=NONE"
execute "hi Error"       "guifg=".s:palette.red    "guibg=NONE"
execute "hi ErrorMsg"    "guifg=".s:palette.red    "guibg=NONE"
execute "hi WarningMsg"  "guifg=".s:palette.yellow "guibg=NONE"
execute "hi Ignore"      "guifg=NONE"              "guibg=NONE"
execute "hi SpecialKey"  "guifg=".s:palette.gray   "guibg=NONE"

" Variable types
execute "hi Constant"        "guifg=NONE"                "guibg=NONE"
execute "hi String"          "guifg=".s:palette.green    "guibg=NONE"
execute "hi StringDelimiter" "guifg=".s:palette.green    "guibg=NONE"
execute "hi Character"       "guifg=".s:palette.magenta  "guibg=NONE"
execute "hi Number"          "guifg=".s:palette.magenta  "guibg=NONE"
execute "hi Boolean"         "guifg=".s:palette.magenta  "guibg=NONE"
execute "hi Float"           "guifg=".s:palette.magenta  "guibg=NONE"

execute "hi Identifier"      "guifg=NONE" "guibg=NONE"
execute "hi Function"        "guifg=NONE" "guibg=NONE"

" Language constructs
execute "hi Statement"       "gui=NONE" "guifg=NONE" "guibg=NONE"

execute "hi Conditional"     "guifg=NONE" "guibg=NONE"
execute "hi Repeat"          "guifg=NONE" "guibg=NONE"
execute "hi Label"           "guifg=NONE" "guibg=NONE"
execute "hi Operator"        "guifg=NONE" "guibg=NONE"
execute "hi Keyword"         "guifg=NONE" "guibg=NONE"

execute "hi Exception"       "guifg=".s:palette.red    "guibg=NONE"
execute "hi Comment"         "guifg=".s:palette.yellow "guibg=NONE"

execute "hi Special"         "guifg=NONE" "guibg=NONE"
execute "hi SpecialChar"     "guifg=".s:palette.darkgreen "guibg=NONE"

execute "hi Tag"             "guifg=NONE" "guibg=NONE"
execute "hi Delimiter"       "guifg=NONE" "guibg=NONE"
execute "hi SpecialComment"  "guifg=NONE" "guibg=NONE"
execute "hi Debug"           "guifg=NONE" "guibg=NONE"

" C like
execute "hi PreProc"         "guifg=NONE" "guibg=NONE"
execute "hi Include"         "guifg=NONE" "guibg=NONE"
execute "hi Define"          "guifg=".s:palette.blue "guibg=NONE"
execute "hi Macro"           "guifg=NONE" "guibg=NONE"
execute "hi PreCondit"       "guifg=NONE" "guibg=NONE"

execute "hi Type"            "guifg=".s:palette.blue "guibg=NONE"
execute "hi StorageClass"    "guifg=".s:palette.blue "guibg=NONE"
execute "hi Structure"       "guifg=".s:palette.blue "guibg=NONE"
execute "hi Typedef"         "guifg=".s:palette.blue "guibg=NONE"

" Diff
execute "hi DiffAdd"         "guifg=NONE" "guibg=NONE"
execute "hi DiffChange"      "guifg=NONE" "guibg=NONE"
execute "hi DiffDelete"      "guifg=NONE" "guibg=NONE"
execute "hi DiffText"        "guifg=NONE" "guibg=NONE"

" Completion menu
execute "hi Pmenu"           "guifg=".s:palette.fg "guibg=".s:palette.bar
execute "hi PmenuSel"        "guifg=".s:palette.fg "guibg=".s:palette.visual
execute "hi PmenuSbar"       "guifg=NONE"          "guibg=".s:palette.bar
execute "hi PmenuThumb"      "guifg=NONE"          "guibg=".s:palette.gray

" Spelling
execute "hi SpellBad"        "guifg=NONE" "guibg=NONE"
execute "hi SpellCap"        "guifg=NONE" "guibg=NONE"
execute "hi SpellLocal"      "guifg=NONE" "guibg=NONE"
execute "hi SpellRare"       "guifg=NONE" "guibg=NONE"

" Fixes for commonly used tags
execute "hi HTMLEndTag"         "guifg=NONE" "guibg=NONE"
execute "hi HTMLSpecialTagName" "guifg=NONE" "guibg=NONE"

execute "hi NERDTreeDirSlash"   "guifg=NONE" "guibg=NONE"
