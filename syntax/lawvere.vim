syntax keyword lawvereKeywords
    \ ob
    \ ar
    \ interp
    \ sketch
    \ over
    \ handling
    \ curry
    \ uncurry
    \ fix
    \ summing
    \ if
    \ then
    \ else
    \ category
    \ effect_category
    \ effect
    \ interpret
    \ in

syntax keyword lawvereBuiltins
    \ identity
    \ app
    \ incr
    \ abs
    \ show
    \ const
    \ plus
    \ minus
    \ mult
    \ equal
    \ less_than
    \ less_than_equal
    \ greater_than
    \ greater_than_equal
    \ SumOb
    \ sumInj
    \ sumUni
    \ side

syntax keyword lawvereTodo TODO

syntax keyword lawvereBoolean true false
syntax match lawvereNumber "\<[0-9]\+\>"
syntax match lawvereFloat "\<[0-9]\+\.[0-9]\+\>"
syntax region lawvereString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell
syntax match lawvereType "\<[A-Z][a-zA-Z0-9_']*\>"

syntax match lawvereSeparator  "[,;]"
syntax region lawvereParens matchgroup=lawvereDelimiter start="(" end=")" contains=TOP,@Spell
syntax region lawvereBrackets matchgroup=lawvereDelimiter start="\[" end="]" contains=TOP,@Spell
syntax region lawvereBlock matchgroup=lawvereDelimiter start="{" end="}" contains=TOP,@Spell

syntax match lawvereOperator "!"
syntax match lawvereOperator "@"
syntax match lawvereOperator "+"
syntax match lawvereOperator "-"
syntax match lawvereOperator "\*"
syntax match lawvereOperator "==\|="
syntax match lawvereOperator "<\|>\|<=\|>="
syntax match lawvereArrow "--\>"
syntax match lawvereLift "\~"

syntax region lawvereLineComment start="//" end="$"
syntax region lawvereBlockComment start="/\*" end="\*/"

hi def link lawvereTodo Todo
hi def link lawvereKeywords Keyword
hi def link lawvereBuiltins Constant
hi def link lawvereBoolean Boolean
hi def link lawvereNumber Number
hi def link lawvereFloat Float
hi def link lawvereString String
hi def link lawvereType Type
hi def link lawvereOperator Operator
hi def link lawvereArrow lawvereOperator
hi def link lawvereLift lawvereOperator
hi def link lawvereSeparator Delimiter
hi def link lawvereDelimiter Delimiter
hi def link lawvereLineComment Comment
hi def link lawvereBlockComment Comment
