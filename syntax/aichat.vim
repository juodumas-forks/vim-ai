if exists("b:current_syntax")
  finish
endif

if get(g:, 'aichat_markdown', 0) == 1
  runtime! syntax/markdown.vim
endif

syntax region myRegion start=/>>>.*$\zs/ end=/\ze<<<.*$/
highlight default link myRegion Normal

syntax match aichatRole ">>> system"
syntax match aichatRole ">>> user"
syntax match aichatRole ">>> include"
syntax match aichatRole "<<< assistant"

highlight default link aichatRole Comment

let b:current_syntax = 'aichat'
