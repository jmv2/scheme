#lang racket

(define (factorial n)
  (if (= n 0)
      1
      (* (factorial (- n 1)) n)))



(define (factorialRC n acum)
  (if (< n 1)
      acum
      (factorialRC (- n 1) (* n acum))))


(define (facto n)
  (factorialRC n 1))
