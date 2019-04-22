#lang racket

;TDA gameSpace
;0. Representación: Lista de ancho N con otra lista de alto M
;1. Constructor:
;Number, Number --> List x List

(define (gameSpaceGenerator n m)
  (if (and (number? n) (number? m))
      (if (and (>= n 5) (>= m 10))
          "Ok"
          "Uno de los parametros no es correcto"
      )
      "Uno de los parametros no es un numero"
  )
)
