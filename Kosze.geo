;PROJECT=-

;INCLUDE

;OFFSETCO
;OFFSETPL

;MIRROR co_add pl_add

local d1=3,675
local d2=1,3
local h1=2,99
local h2=h1+1,05
local D=1,8

;ABS absname <10 10 10 10 10 10> ;L <10 10 10 10 10 10>
ABS kosz<10 10 10 10 10 10> L <10 10 10 10 10 10>{255 255 255}

CORNERS

;id x y z
401 L-d2 D+d1 h1
402 L-d2 d1 h1
403 L-d2 y(402) h2
404 L-d2 y(401) h2

405 0+d2 y(401) z(401)
406 0+d2 y(402) z(402)
407 0+d2 y(403) z(403)
408 0+d2 y(404) z(404)

PLANES

;[id name  /   / absname  ]
[41 kosz1/401 402 403 404/kosz]
[42 kosz2/405 406 407 408/kosz]
[43 kosz11\401 402 403 404\kosz]
[44 kosz22\405 406 407 408\kosz]
;[id name  /   / (a /  / a_abs) (b /  / b_abs) ]


