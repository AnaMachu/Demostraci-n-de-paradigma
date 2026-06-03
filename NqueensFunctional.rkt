#lang racket

(define (queens n) 
  (place-queens n n)) ;tamaño de tablero
(define (place-queens n k) 
  (if (= k 0) ;caso base (no reinas por colocar)
      '(())
      (filter safe? ;candidatos pasan la prueba de ser seguro poner una reina ahí
              (flatmap (lambda (qs) 
                         ;agregar nueva reina en cada fila fila posible
                         ;agregar nueva reina al inicio de la fila
                         (map (lambda (q) (cons q qs)) 
                              (range 1 (+ n 1))))
                       (place-queens n (- k 1)))))) ;llama a la recusión

;car =q, cdr=rest , d=1
(define (safe? qs)
  (check (car qs) (cdr qs) 1))


;verificar que reina no ataque
(define (check q rest d)
  (or (null? rest)
      (and (not (= q (car rest)));verifica condición de no estar en misma fila
           (not (= (abs (- q (car rest))) d)); verifica condición de no estar en diagonal 
           (check q (cdr rest) (+ d 1)))));siguiente paso, aumenta la distancia (siguiente columna)

 ;lista de listas y se aplana en una sola lista de candidatos
(define (flatmap f lst) 
  (apply append (map f lst)))

(define (count-solutions n)
  (length (queens n)))
(for ([n (range 1 10)]) ;test cases
  (printf "~a -> ~a\n" n (count-solutions n)))
