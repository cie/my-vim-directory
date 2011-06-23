if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

set iskeyword=a-z,_,A-Z,48-57,/,*,-,+,!,<,>,=

syn case match
syn keyword joyBlock			DEFINE LIBRA == HIDE IN END MODULE PRIVATE PUBLIC ;
syn match joyBlockEquals +==+
syn match joyBlockSemicolon +;+
syn match joyDot +\.+
syn keyword joyTodo			TODO FIXME XXX contained
syn region joyComment start="(\*" end="\*)" contains=@Spell,joyTodo keepend fold
syn region joyLineComment start="#" end="$" contains=@Spell,joyTodo keepend 
syn match joyNumber "\<-\?\d\+\(\.\d*\)\?"
syn region joyString start=+"+ end=+"\|$+ skip=+\\"+ contains=joyStringEscape,joyStringError
syn match joyStringEscape +\\\(["rfntb]\|\d\{3}\)+ contained
syn match joyStringError +\\\(\d[^0-9]\|\d\d[^0-9]\)+ contained

syn keyword joyKeyword MTRLIB m-print mm-2bin-m mm-mul-m mm-add-m mm-bin-m ms-cbin-m ms-bin-m sm-bin-m m-transpose-m mm-horcat-m mm-vercat-m mm-samedimensions mm-conformable m-dimensions vv-bin-m v-e-diag-m v-zdiag-m v-1col-m v-1row-m vv-2bin-s vv-bin-v vv-comformable vs-cbin-v vs-bin-v v-invert-v sv-bin-v v-negate-v n-e-vector vv-samesize TUTLIB toc-do-sec0-loop toc-repeat-sections toc-do-section toc-ask-for-section toc-do-section0 toc-one-heading toc-of-tutorial toc-all-headings put-stats ini-stats expecting-from expecting get-quote get-list get-integer praise pausing pause LAZLIB Squares Ones Powers-of-2 Odds Evens Positives Naturals Filter Map From-by From-to-by From-to From Take Size N-th Drop Third Second Cons Uncons Rest First Null LSPLIB lisp l-prompt y RECFOLDR tern l2 l1 FOLDR2 FOLDL bin ini lis FOLDR lib0 LIST NULL ATOM EQ CONS CDR CAR apply DEFUN DEF IF CLOSURE LAMBDA eval SYMLIB Min2Inf Min2Tre Min2Rev Min2Cam Min2Pol Inf2Tre Inf2Rev Inf2Cam Inf2Pol Cam2Inf Cam2Tre Cam2Rev Cam2Pol Rev2Tre Rev2Inf Rev2Cam Rev2Pol Pol2Tre Pol2Inf Pol2Cam Pol2Rev M42C M32C M22C M12C bin3ops M42T bin2ops M32T bin1ops M22T M12T new-infra X2Y R2I R2T R2C P2I P2T binops P2C I2T I2C C2R C2P C2I QUOTE unops C2T SEQLIB treesample treemap treefilter treestrip treereverse treeflatten treeshunt orlistfilter orlist cartproduct transpose delete insert-old insert merge1 merge mk_qsort qsort1 qsort1-1 qsort permlist insertlist powerlist2 powerlist1 subseqlist frontlist frontlist1 scalarproduct product restlist flatten reversestring reverselist reverse putlist NUMLIB cube-root use-newton newton deriv qroots tandeg cosdeg sindeg radians e pi celsius fahrenheit gcd fib fact prime odd even negative positive AGGLIB variance average sum interleave2list interleave2 foldr2 mapr2 fold2 stepr2 mapr pairstep from-to-string from-to-set from-to-list from-to zip unswons2 swons2 uncons2 cons2 null2 thirdd secondd restd firstd unswonsd unconsd swonsd consd nulld foldr set2string elements shunt string2set fifth fourth third second unpair pairlist pairstring pairset unitlist unitstring unitset INILIB all-libload special-libload basic-libload libload verbose forever repeat nullary2 i2 call dip3 dip2 dipd sequand negate disjoin conjoin show-todaynow now today localtime-strings months weekdays swoncat numerical sequor boolean to-lower to-upper falsity truth newstack pop2 dup2 ask putstrings bell space putln newline USRLIB standard-setting unix find-in edit escape editor dir terminal control-eof vms returned RAWJOY1 quit abort include putchars putch put get argc argv getenv system gc setecho setundeferror setautoput manual helpdetail help treegenrec treerec treestep all some split filter primrec infra times map fold step condlinrec genrec binrec tailrec linrec while cond iffile iffloat iflist ifstring ifset iflogical ifchar ifinteger ifte branch cleave ternary binary app4 app3 app2 unary4 unary3 unary2 unary nullary construct app12 app11 app1 dip x i file float user leaf list string set logical char integer in has equal = != < <= > >= small null body intern name enconcat concat take drop unswons uncons case opcase size of at compare rest first swons cons unstack ftell fseek fputstring fputchars fputch fput frename fremove fwrite fread fopen fgets fgetch fflush ferror feof fclose min max succ pred srand formatf format strtod strtol strftime mktime gmtime localtime trunc tanh tan sqrt sinh sin pow modf log10 log ldexp frexp floor exp cosh cos ceil atan2 atan asin acos abs chr ord neg sign div rem / * - + not and xor or choice pop rotated rolldownd rollupd swapd dupd popd rotate rolldown rollup swap dup id stderr stdout stdin rand time clock echo undefs undeferror autoput conts stack setsize maxint true false  file type  float type  list type  string type  set type integer type  character type  truth value type 

hi def link joyKeyword Keyword
hi def link joyNumber Number
hi def link joyString String
hi def link joyTodo Todo
hi def link joyStringEscape Special
hi def link joyStringError Error
hi def link joyComment Comment
hi def link joyLineComment Comment
hi def link joyBlock Define
hi def link joyBlockEquals Define
hi def link joyBlockSemicolon Special
hi def link joyDot Special