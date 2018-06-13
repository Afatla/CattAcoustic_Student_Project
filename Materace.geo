;PROJECT=-

;INCLUDE

;OFFSETCO
;OFFSETPL

local H_materaca=1
local d_materaca=1,95

;MIRROR co_add pl_add

;ABS absname <10 10 10 10 10 10> ;L <10 10 10 10 10 10>
ABS materace <20 10 5 2 1 1> L <10 10 10 10 10 10> {0 0 128}

CORNERS

;id x y z
501 L-0,1 W-3,6 0
502 x(501) y(501)-d_materaca 0
503 x(501) y(502) h_materaca
504 x(501) y(501) h_materaca

505 L y(501) z(501)
506 L y(502) z(502)
507 L y(503) z(503)
508 L y(504) z(504)

511 0,1 W-3,6 0
512 x(511) y(511)-d_materaca 0
513 x(511) y(512) h_materaca
514 x(511) y(511) h_materaca

515 0 y(511) z(511)
516 0 y(512) z(512)
517 0 y(513) z(513)
518 0 y(514) z(514)

PLANES

;[id name  /   / absname  ]
[51 materac1_przod  /501 502 503 504/ materace  ]
[52 materac1_bok1  /502 506 507 503/ materace  ]
[53 materac1_bok2  \501 505 508 504\ materace  ]
[54 materac1_gora  /504 503 507 508/ materace ]

[55 materac2_przod  \511 512 513 514\ materace  ]
[56 materac2_bok1  \512 516 517 513\ materace  ]
[57 materac2_bok2  /511 515 518 514/ materace  ]
[58 materac2_gora  \514 513 517 518\ materace ]

;[id name  /   / (a /  / a_abs) (b /  / b_abs) ]

