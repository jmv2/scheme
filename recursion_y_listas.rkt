#lang racket
;Ayudantía 13/04/2019

; Recursion lineal

(define (generador-lista tam )
  (if (<= tam 1)
      (cons 1 null)
      (cons tam (generador-lista (- tam 1)))))

; Retornar el elemento de la lista que se le indique como parametro

(define (s-elemento lista elemento)
  (define (seleccionar-elemento lista elemento acum) 
    (if (= acum elemento)
        (car lista)
        (seleccionar-elemento (cdr lista) elemento (+ 1 acum))))
  (seleccionar-elemento lista elemento 1))

;(s-elemento (generador-lista 40) 4)
;(generador-lista 40)  
;(cons 1 (cons 2 (cons 3 (cons 4 (cons 5 null)))))

(define (largoLista Lista)
  (define (contar-elementos lista acum)
    (if (null? lista)
        acum
        (contar-elementos (cdr lista) (+ 1 acum))))
  (contar-elementos Lista 0))

; Tomar el ultimo elemento de la lista a cada y meterlo en una nueva lista.


(define (ultimoElemento lista)
  (s-elemento lista (largoLista lista )))

(define (penultimoElemento lista)
  (s-elemento lista (- (largoLista lista) 1 )))

; selecciono el elemento en orden descendente 40..39..38...1

(define (addToTail ls newElement)
  (append ls (cons newElement null)))

(define (listReverse ls)
  (define (invertirLista lsIn lsOut desc)
    (if (< desc 1)
        lsOut
        (invertirLista lsIn (addToTail lsOut (s-elemento lsIn desc) ) (- desc 1))))
  (invertirLista ls '() (largoLista ls)))

; Aqui debo revisar y buscar la forma de agregar elementos al final de la lista!!


(define listaPruebas (generador-lista 10))


;;; Aqui si empieza todo

(define (creadorDeLista largo)
  (listReverse (generador-lista largo)))


;test, quitar comentario de la siguiente línea.
;(creadorDeLista 400)
