#lang racket

(define (p-catedra p1 p2 p3)
  (/ (+ p1 p2 p3) 3))

(define (promedio pep1 pep2 pep3 pc pa)
  (cond
    ((and (>= pep1 4)(>= pep2 4)(>= pep3 4)(>= pc 4))
          (/ (+ pep1 pep2 pep3 pc) 4))

    ((or (< pep1 4)(< pep2 4)(< pep3 4)(<= (p-catedra pep1 pep2 pep3) 5))
     (p-catedra pep1 pep2 pep3))

    (else
     (/ (- (+ pep1 pep2 pep3 pc (* pa 2))(min pep1 pep2 pep3 pc pa)) 5))))




; Ejemplo base (suma)
(define (suma2 a b) (+ a b))
(define (suma3 a b c) (+ a b c))

;(suma2 13 6)
;(suma3 13 6 8)

; Suma currificada
(define (suma2-curr a)
  (lambda (b) (+ a b)))

(define (suma3-curr a) (lambda (b) (lambda (c) (+ a b c))))

((suma2-curr 13) 6)
;(((suma3-curr 13) 6) 8)

