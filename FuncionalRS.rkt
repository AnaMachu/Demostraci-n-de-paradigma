#lang racket
(define (solve names)
  ;tabla hash
  (define table (make-hash))

  (for/list ([name names])
    (define count (hash-ref table name 0))
    (hash-set! table name (+ count 1))
    (if (= count 0)
        "OK"
        (string-append name (number->string count)))))

;;Entrada
(define n (read))
(define names
  (for/list ([_ (in-range n)])
    (symbol->string (read))))

(for ([resp (solve names)])
  (displayln resp))
