" Quit if current syntax is set
if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "nuscr"

" nuScr syntax is case sensitive
syn case match

syn keyword nuScrKeyword   module import type protocol role calls new choice at or from to rec as
syn keyword nuScrStatement continue do
syn keyword nuScrModifier  global nested
syn keyword nuScrType      int bool string unit

syn match nuScrLineComment   "//.*$" contains=@Spell
syn match nuScrMLLineComment "(\*).*$" contains=@Spell

syn region nuScrCComment     start="/\*" end="\*/" contains=@Spell
syn region nuScrMLComment    start="(\*\%()\@!\)" end="\*)" contains=nuScrMLComment,nuScrMLLineComment,@Spell
syn region nuScrString       start=+"+ end=+"+

hi def link nuScrKeyword       Keyword
hi def link nuScrModifier      StorageClass
hi def link nuScrStatement     Statement
hi def link nuScrCComment      Comment
hi def link nuScrMLComment     Comment
hi def link nuScrLineComment   Comment
hi def link nuScrMLLineComment Comment
hi def link nuScrString        String
hi def link nuScrType          Type
