" Name: Highlight Scapple Dark Colorscheme
" Author: mmzeeman (on Github)
" URL: https://github.com/mmzeeman/vim-highlight
" (see this url for latest release & screenshots)
" License: OSI approved MIT license

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "highlight-scapple-dark"

set background=dark

" This theme depends on termguicolors being set.

" Dark variant of scapple. The bubble colors are used as foreground
" colors, with a very slight tone shift of the same hue as background
" behind the highlighted text. The background is a warm dark brown
" (the light theme has a yellowish paper color), not black.

let s:palette = {}

let s:palette.active    = '#e16500' " Dark orange from selected item in scapple
let s:palette.bg        = '#1f1b14' " Warm dark paper
let s:palette.fg        = '#efe9dc' " Warm off white
let s:palette.gray      = '#7a7466' " Line numbers, non-text

" Bubble colors, used as foreground
let s:palette.magenta   = '#fedbff' " Pink Bubble
let s:palette.yellow    = '#faedaf' " Yellow Bubble
let s:palette.red       = '#ffd4d4' " Red Bubble
let s:palette.orange    = '#ffc78a' " Orange
let s:palette.blue      = '#c8ebfe' " Blue Bubble
let s:palette.green     = '#c8f9b0' " Green Bubble
let s:palette.darkgreen = '#abd698' " Darker Green

" Very slight background tone shifts (about 12% of the bubble color on the bg)
let s:palette.magenta_bg   = '#3a3130'
let s:palette.yellow_bg    = '#393427'
let s:palette.red_bg       = '#3a312b'
let s:palette.blue_bg      = '#333430'
let s:palette.green_bg     = '#333627'
let s:palette.darkgreen_bg = '#303124'
let s:palette.orange_bg    = '#45341f'

let s:palette.visual    = '#5a3a1c' " Dark orangy selection
let s:palette.bar       = '#2d271d' " Status/tab lines

" Editor
execute "hi Normal"       "guifg=".s:palette.fg     "guibg=".s:palette.bg
execute "hi Cursor"       "guifg=".s:palette.bg     "guibg=".s:palette.active
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
execute "hi TabLineSel"  "guifg=".s:palette.fg      "guibg=".s:palette.visual

" File Navigation / Searching
execute "hi Search"      "guifg=".s:palette.orange  "guibg=".s:palette.orange_bg
execute "hi IncSearch"   "guifg=".s:palette.orange  "guibg=".s:palette.orange_bg "gui=reverse"
execute "hi Directory"   "guifg=NONE" "guibg=NONE"

" Prompt/Status
execute "hi StatusLine"   "guifg=".s:palette.magenta "guibg=".s:palette.bar
execute "hi StatusLineNC" "guifg=".s:palette.gray    "guibg=".s:palette.bar
execute "hi WildMenu"     "guifg=NONE" "guibg=NONE"
execute "hi Question"     "guifg=NONE" "guibg=NONE"
execute "hi Title"        "guifg=".s:palette.magenta "guibg=NONE"
execute "hi ModeMsg"      "guifg=NONE" "guibg=NONE"
execute "hi MoreMsg"      "guifg=NONE" "guibg=NONE"

" Visual aid
execute "hi MatchParen"  "guifg=".s:palette.fg "guibg=".s:palette.active
execute "hi Visual"      "guifg=NONE"          "guibg=".s:palette.visual
execute "hi VisualNOS"   "guifg=NONE"          "guibg=".s:palette.visual
execute "hi NonText"     "guifg=".s:palette.gray "guibg=NONE"

execute "hi Todo"        "guifg=".s:palette.yellow "guibg=".s:palette.yellow_bg
execute "hi Underlined"  "guifg=NONE"              "guibg=NONE"
execute "hi Error"       "guifg=".s:palette.red    "guibg=".s:palette.red_bg
execute "hi ErrorMsg"    "guifg=".s:palette.red    "guibg=".s:palette.red_bg
execute "hi WarningMsg"  "guifg=".s:palette.yellow "guibg=".s:palette.yellow_bg
execute "hi Ignore"      "guifg=NONE"              "guibg=NONE"
execute "hi SpecialKey"  "guifg=".s:palette.gray   "guibg=NONE"

" Variable types
execute "hi Constant"        "guifg=NONE" "guibg=NONE"
execute "hi String"          "guifg=".s:palette.green   "guibg=".s:palette.green_bg
execute "hi StringDelimiter" "guifg=".s:palette.green   "guibg=".s:palette.green_bg
execute "hi Character"       "guifg=".s:palette.magenta "guibg=".s:palette.magenta_bg
execute "hi Number"          "guifg=".s:palette.magenta "guibg=".s:palette.magenta_bg
execute "hi Boolean"         "guifg=".s:palette.magenta "guibg=".s:palette.magenta_bg
execute "hi Float"           "guifg=".s:palette.magenta "guibg=".s:palette.magenta_bg

execute "hi Identifier"      "guifg=NONE" "guibg=NONE"
execute "hi Function"        "guifg=NONE" "guibg=NONE"

" Language constructs
execute "hi Statement"       "gui=NONE" "guifg=NONE" "guibg=NONE"

execute "hi Conditional"     "guifg=NONE" "guibg=NONE"
execute "hi Repeat"          "guifg=NONE" "guibg=NONE"
execute "hi Label"           "guifg=NONE" "guibg=NONE"
execute "hi Operator"        "guifg=NONE" "guibg=NONE"
execute "hi Keyword"         "guifg=NONE" "guibg=NONE"

execute "hi Exception"       "guifg=".s:palette.red    "guibg=".s:palette.red_bg
execute "hi Comment"         "guifg=".s:palette.yellow "guibg=".s:palette.yellow_bg

execute "hi Special"         "guifg=NONE" "guibg=NONE"
execute "hi SpecialChar"     "guifg=".s:palette.darkgreen "guibg=".s:palette.darkgreen_bg

execute "hi Tag"             "guifg=NONE" "guibg=NONE"
execute "hi Delimiter"       "guifg=NONE" "guibg=NONE"
execute "hi SpecialComment"  "guifg=NONE" "guibg=NONE"
execute "hi Debug"           "guifg=NONE" "guibg=NONE"

" C like
execute "hi PreProc"         "guifg=NONE" "guibg=NONE"
execute "hi Include"         "guifg=NONE" "guibg=NONE"
execute "hi Define"          "guifg=".s:palette.blue "guibg=".s:palette.blue_bg
execute "hi Macro"           "guifg=NONE" "guibg=NONE"
execute "hi PreCondit"       "guifg=NONE" "guibg=NONE"

execute "hi Type"            "guifg=".s:palette.blue "guibg=".s:palette.blue_bg
execute "hi StorageClass"    "guifg=".s:palette.blue "guibg=".s:palette.blue_bg
execute "hi Structure"       "guifg=".s:palette.blue "guibg=".s:palette.blue_bg
execute "hi Typedef"         "guifg=".s:palette.blue "guibg=".s:palette.blue_bg

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

