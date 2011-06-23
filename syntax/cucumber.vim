syn match CukeFeature /\s*Feature:.*$/
syn match CukeBackground /\s*Background:.*$/
syn match CukeInOrder /\s*In order/
syn match CukeInOrder /\s*So that/
syn match CukeAsA /\s*As a/
syn match CukeIWant /\s*I want/
syn match CukeScenario /\s*Scenario:.*$/
syn match CukeScenario /\s*Scenario Outline:.*$/
syn match CukeExamples /\s*Examples:.*\n.*$/
syn keyword CukeKeyword Given When Then But And
syn match CukeBullet /\s*\*/
syn match CukeParameter /<.\{-}>/
syn match CukePipe /|/ containedin=CukeExamples
syn match CukeTag /@\w\+/
syn match CukeComment /^\s#.*$/
syn match CukeString /"[^"]*"/


syn match CukeFeature /\s*Jellemző:.*$/
syn match CukeBackground /\s*Háttér:.*$/
syn match CukeInOrder /\s*Azért, hogy/
syn match CukeAsA /\s*Mint/
syn match CukeIWant /\s*Szeretné[mk]/
syn match CukeScenario /\s*Forgatókönyv:.*$/
syn match CukeScenario /\s*Forgatókönyv vázlat:.*$/
syn match CukeExamples /\s*Példák:.*\n.*$/
syn keyword CukeKeyword Amennyiben Adott Majd Ha Amikor Akkor És De


hi def link CukeFeature Structure
hi def link CukeInOrder Statement
hi def link CukeAsA Statement
hi def link CukeIWant Statement
hi def link CukeBullet Statement
hi def link CukeScenario Function
hi def link CukeBackground Function
hi def link CukeKeyword Statement
hi def link CukeExamples Constant
hi def link CukeParameter Constant
hi def link CukePipe Normal
hi def link CukeTag Tag
hi def link CukeComment Comment
hi def link CukeString String
