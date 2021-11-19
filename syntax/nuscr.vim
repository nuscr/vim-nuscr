" Quit if current syntax is set
if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "nuscr"

" nuScr syntax is case sensitive
syn case match

syn keyword nuScrKeyword module import type protocol global nested role from to at or rec continue do calls new
syn keyword nuScrType int bool string unit

syn region nuScrCComment start="/\*" end="\*/" contains=@Spell
syn match nuScrLineComment "//.*$" contains=@Spell
syn match nuScrMLLineComment "(\*).*$" contains=@Spell
syn region nuScrMLComment start="(\*\%()\@!\)" end="\*)" contains=nuScrMLComment,nuScrMLLineComment,@Spell

syn region nuScrString start=+"+ end=+"+

hi def link nuScrKeyword Keyword
hi def link nuScrCComment Comment
hi def link nuScrMLComment Comment
hi def link nuScrLineComment Comment
hi def link nuScrMLLineComment Comment
hi def link nuScrString String
hi def link nuScrType Type
