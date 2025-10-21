


hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "highlight-scapple"

set background=light

" This theme depends on termguicolors being set.

let s:palette = {
\ 'active':    '#ffffff',
\ 'bg':        '#fffcf5',
\ 'fg':        '#000000',
\ 'magenta':   '#ffe8fb',
\ 'yellow':    '#fdf4cc',
\ 'red':       '#ffe4e2',
\ 'orange':    '#fcdede',
\ 'blue':      '#def2fa',
\ 'green':     '#c8f9b0',

\ 'cyan':      '#dbecb6',
\ 'darkgreen': '#dbecb6',
\ 'darkblue':  '#000090',
\}

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
execute "hi TabLineSel"  "guifg=NONE"  "guibg=".s:palette.cyan

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
execute "hi MatchParen"  "guifg=NONE" "guibg=".s:palette.blue
execute "hi Visual"      "guifg=NONE" "guibg=".s:palette.cyan
execute "hi VisualNOS"   "guifg=NONE" "guibg=".s:palette.cyan
execute "hi NonText"     "guifg=NONE" "guibg=NONE"

execute "hi Todo"        "guifg=NONE"      "guibg=".s:palette.yellow
execute "hi Underlined"  "guifg=NONE"      "guibg=NONE"
execute "hi Error"       "guifg=".s:palette.fg "guibg=".s:palette.red
execute "hi ErrorMsg"    "guifg=".s:palette.fg "guibg=".s:palette.red
execute "hi WarningMsg"  "guifg=".s:palette.fg "guibg=".s:palette.yellow
execute "hi Ignore"      "guifg=NONE"      "guibg=NONE"
execute "hi SpecialKey"  "guifg=NONE"      "guibg=NONE"

" Variable types
execute "hi Constant"        "guifg=NONE" "guibg=NONE"
execute "hi String"          "guifg=NONE" "guibg=".s:palette.green
execute "hi StringDelimiter" "guifg=NONE" "guibg=".s:palette.green
execute "hi Character"       "guifg=NONE" "guibg=".s:palette.magenta
execute "hi Number"          "guifg=NONE" "guibg=".s:palette.magenta
execute "hi Boolean"         "guifg=NONE" "guibg=".s:palette.magenta
execute "hi Float"           "guifg=NONE" "guibg=".s:palette.magenta

execute "hi Identifier"      "guifg=NONE" "guibg=".s:palette.blue
execute "hi Function"        "guifg=NONE" "guibg=".s:palette.blue

" Language constructs
execute "hi Statement"       "guifg=NONE" "guibg=NONE"
execute "hi Conditional"     "guifg=NONE" "guibg=NONE"
execute "hi Repeat"          "guifg=NONE" "guibg=NONE"
execute "hi Label"           "guifg=NONE" "guibg=NONE"
execute "hi Operator"        "guifg=NONE" "guibg=NONE"
execute "hi Keyword"         "guifg=NONE" "guibg=NONE"

execute "hi Exception"       "guifg=NONE" "guibg=".s:palette.red
execute "hi Comment"         "guifg=NONE" "guibg=".s:palette.yellow

execute "hi Special"         "guifg=NONE" "guibg=".s:palette.darkgreen
execute "hi SpecialChar"     "guifg=NONE" "guibg=".s:palette.darkgreen

execute "hi Tag"             "guifg=NONE" "guibg=NONE"
execute "hi Delimiter"       "guifg=".s:palette.darkblue "guibg=NONE"
execute "hi SpecialComment"  "guifg=NONE" "guibg=NONE"
execute "hi Debug"           "guifg=NONE" "guibg=NONE"

" C like
execute "hi PreProc"         "guifg=NONE" "guibg=NONE"
execute "hi Include"         "guifg=NONE" "guibg=NONE"
execute "hi Define"          "guifg=NONE" "guibg=NONE"
execute "hi Macro"           "guifg=NONE" "guibg=NONE"
execute "hi PreCondit"       "guifg=NONE" "guibg=NONE"

execute "hi Type"            "guifg=NONE" "guibg=NONE"
execute "hi StorageClass"    "guifg=NONE" "guibg=NONE"
execute "hi Structure"       "guifg=NONE" "guibg=NONE"
execute "hi Typedef"         "guifg=NONE" "guibg=NONE"

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

