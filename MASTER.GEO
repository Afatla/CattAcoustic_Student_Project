;MASTER.GEO
;PROJECT=P1

;INCLUDE Kosze.geo
INCLUDE Materace.geo

global H_zrodla=1,5
global H_odbiornika=1,2
global W=9,15
global L=17,37
local H=6,313
local H_okna1=1,61
local H_okna2=H_okna1+3,4
local H_okna3=H_okna1+2,7
local H_okna4=H_okna1+3,2
local d_miedzy_oknami=1,2
local d_okna=2
local H_kaloryfera1=0,3
local H_kaloryfera2=1,41
local d_scianki=2,43
local H_scianki=2,7


;OFFSETCO
;OFFSETPL

;MIRROR co_add pl_add
ABS scianka1     <30 25 15 15 12 12>  L<10 10 10 10 10 10> {0 128 64}
ABS scianka2     <35 20 20 20 15 12>  L<10 10 10 10 10 10> {0 64 0} 
ABS beton_gladki <1 1 2 2 2 5>  {128 128 128}
ABS okno         <20 15 7 6 4 2> L<10 10 10 10 10 10> {145 200 255} 
ABS parkiet      <4 4 6 7 6 6>  {128 64 0} 
ABS kaloryfer    <29 27 21 20 15 7> L<10 10 10 15 10 10> {192 192 192}
ABS sufit        <50 80 70 65 60 60> L<8 35 10 20 10 20> {235 235 235} 
ABS bet_pomal <8 7 7 7 5 5> L<10 15 12 10 10 10> {255 255 128}
ABS parkiet_plyw <25 20 18 10 6 6> L<10 10 10 10 10 10> {89 45 0}

ABS podloga= parkiet_plyw
ABS sciana= bet_pomal


CORNERS

;id x y z

;podloga
1 0 0 0
2 L 0 0
3 L W 0
4 0 W 0

;sufit
5 x(1) y(1) H
6 x(2) y(2) H
7 x(3) y(3) H
8 x(4) y(4) H

;punkty na sciance wspinaczkowej
99 L-3 0 0
100 L-6,7 0 0
101 L-6,7 0 H_scianki
102 L-3 0 H_scianki
103 x(102) 2 H
104 x(101) 2 H
113 x(103) 3,7 H
114 x(104) 3,7 H 
115 x(104) 0 H
116 x(103) 0 H

;sciana ze sciaka wspinaczkowa i koszem
105 L 2,43 0
106 L 2,43 H

;okna
201 x(4)+d_miedzy_oknami y(4) H_okna1
202 x(201)+d_okna y(4) H_okna1
203 x(202) y(4) H_okna3
204 x(201) y(4) H_okna3
231 x(201)+1 y(4) H_okna2
241 x(201)+0,5 y(4) H_okna4
251 x(231)+0,5 y(4) H_okna4
205 x(202)+d_miedzy_oknami y(4) z(201)
206 x(205)+d_okna y(4) z(205)
207 x(206) y(4) H_okna3
208 x(205) y(4) H_okna3
232 x(205)+1 y(4) H_okna2
242 x(205)+0,5 y(4) H_okna4
252 x(232)+0,5 y(4) H_okna4
209 x(206)+d_miedzy_oknami y(4) z(201)
210 x(209)+d_okna y(4) z(201)
211 x(210) y(4) H_okna3
212 x(209) y(4) H_okna3
233 x(209)+1 y(4) H_okna2
243 x(209)+0,5 y(4) H_okna4
253 x(233)+0,5 y(4) H_okna4
213 x(210)+d_miedzy_oknami y(4) z(201)
214 x(213)+d_okna y(4) z(201)
215 x(214) y(4) H_okna3
216 x(213) y(4) H_okna3
234 x(213)+1 y(4) H_okna2
244 x(213)+0,5 y(4) H_okna4
254 x(234)+0,5 y(4) H_okna4
217 x(214)+d_miedzy_oknami y(4) z(201)
218 x(217)+d_okna y(4) z(201)
219 x(218) y(4) H_okna3
220 x(217) y(4) H_okna3
235 x(217)+1 y(4) H_okna2
245 x(217)+0,5 y(4) H_okna4
255 x(235)+0,5 y(4) H_okna4

;kaloryfery
301 x(201) y(4) H_kaloryfera1
302 x(202) y(4) H_kaloryfera1
303 x(302) y(4) H_kaloryfera2
304 x(301) y(4) H_kaloryfera2 
305 x(205) y(4) H_kaloryfera1
306 x(206) y(4) H_kaloryfera1
307 x(207) y(4) H_kaloryfera2
308 x(208) y(4) H_kaloryfera2 
309 x(209) y(4) H_kaloryfera1
310 x(210) y(4) H_kaloryfera1
311 x(211) y(4) H_kaloryfera2
312 x(212) y(4) H_kaloryfera2 
313 x(213) y(4) H_kaloryfera1
314 x(214) y(4) H_kaloryfera1
315 x(215) y(4) H_kaloryfera2
316 x(216) y(4) H_kaloryfera2 
317 x(217) y(4) H_kaloryfera1
318 x(218) y(4) H_kaloryfera1
319 x(219) y(4) H_kaloryfera2
320 x(220) y(4) H_kaloryfera2 



PLANES

;[id name  /   / absname  ]

[1 podloga / 1 2 3 4 / podloga]
[2 sciana_drzwi /1 4 8 5 / sciana]
[4 sciana_kosz / 3 105 106 7 /sciana]
[3 okna_kaloryfery \3 4 8 7\ (kaloryfer \301 302 303 304\kaloryfer)(kaloryfer \305 306 307 308\kaloryfer)(kaloryfer \309 310 311 312\kaloryfer)(kaloryfer \313 314 315 316\kaloryfer)(kaloryfer \317 318 319 320\kaloryfer)(okno \201 202 203 251 231 241 204\okno)(okno \205 206 207 252 232 242 208\okno)(okno \209 210 211 253 233 243 212\okno) (okno \213 214 215 254 234 244 216\okno)(okno \217 218 219 255 235 245 220\okno)(sciana \ 3 4 8 7 \sciana)]
[5 scianka_kosz /105 2 6 106 /scianka1]
[6 scianka_pochyla \101 102 103 104\scianka2]
[7 sufit \5 115 104 103 116 6 7 8\sufit]
[8 scianka \2 6 116 102 101 100 99 \scianka1]
[9 sciana \1 100 115 5\sciana]
[10 trojkat1 \101 104 115\beton_gladki]
[11 trojkat2 /102 103 116/beton_gladki]

