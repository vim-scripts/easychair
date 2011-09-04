" Vim syntax file
" Language:        EasyChair Review Form
" Maintainer:      Sebastian Tramp (http://sebastian.tramp.name)
" Filenames:       review_form_*.txt
" Latest Revision: 2011-09-04

if exists("b:current_syntax")
    finish
endif

" inherit styles from markdown (so we have lists and headings if we want)
runtime! syntax/markdown.vim
unlet! b:current_syntax

syntax match ecComment     "^---.*$"
syntax match ecHeader      "^\*\*\*.*$" contains=ecHeaderName,ecHeaderTitle
syntax match ecHeaderName  " [^:]*: " contained
syntax match ecHeaderTitle " TITLE:.*" contained

syntax match ecRatingLine  "^[0-9] .*$"
syntax match ecRatingLine  "^-[0-9] .*$"

"syntax region ecBlock start="--------------------------------------------------------------" end="--------------------------------------------------------------" fold transparent
" Folding via syntax is used for this filetype.
"setlocal foldmethod=syntax

highlight def link ecComment     Comment
highlight def link ecHeader      Typedef
highlight def link ecHeaderName  PreProc
highlight def link ecHeaderTitle htmlH1
highlight def link ecRatingLine  Statement

let b:current_syntax = "easychair"
