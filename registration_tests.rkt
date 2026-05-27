#lang racket

(require rackunit)
(require rackunit/text-ui)

;; ============================================================
;; Solución: CF 4C — Registration System
;; ============================================================

(define (solve names)
  (define table (make-hash))
  (for/list ([name names])
    (define count (hash-ref table name 0))
    (hash-set! table name (+ count 1))
    (if (= count 0)
        "OK"
        (string-append name (number->string count)))))

;; ============================================================
;; Helper: convierte símbolos a strings (para usar read)
;; ============================================================

(define (syms->strings lst)
  (map (lambda (x)
         (if (symbol? x) (symbol->string x) x))
       lst))

;; ============================================================
;; Suite de pruebas
;; ============================================================

(define registration-tests
  (test-suite
   "CF 4C — Registration System"

   ;; ----------------------------------------------------------
   ;; Caso oficial del enunciado
   ;; ----------------------------------------------------------
   (test-case "Ejemplo oficial"
     (check-equal?
      (solve '("abacaba" "acaba" "abacaba" "acaba"))
      '("OK" "OK" "abacaba1" "acaba1")))

   ;; ----------------------------------------------------------
   ;; Un solo nombre
   ;; ----------------------------------------------------------
   (test-case "Un solo nombre nuevo"
     (check-equal? (solve '("alice")) '("OK")))

   (test-case "Un solo nombre repetido dos veces"
     (check-equal?
      (solve '("bob" "bob"))
      '("OK" "bob1")))

   (test-case "Un nombre repetido tres veces"
     (check-equal?
      (solve '("x" "x" "x"))
      '("OK" "x1" "x2")))

   (test-case "Un nombre repetido cinco veces"
     (check-equal?
      (solve '("z" "z" "z" "z" "z"))
      '("OK" "z1" "z2" "z3" "z4")))

   ;; ----------------------------------------------------------
   ;; Varios nombres, sin repeticiones
   ;; ----------------------------------------------------------
   (test-case "Todos los nombres distintos"
     (check-equal?
      (solve '("ana" "ben" "carl" "diana"))
      '("OK" "OK" "OK" "OK")))

   ;; ----------------------------------------------------------
   ;; Todos los nombres iguales
   ;; ----------------------------------------------------------
   (test-case "Todos iguales — 6 veces"
     (check-equal?
      (solve '("admin" "admin" "admin" "admin" "admin" "admin"))
      '("OK" "admin1" "admin2" "admin3" "admin4" "admin5")))

   ;; ----------------------------------------------------------
   ;; Mezcla de nombres
   ;; ----------------------------------------------------------
   (test-case "Intercalados: a b a b a"
     (check-equal?
      (solve '("a" "b" "a" "b" "a"))
      '("OK" "OK" "a1" "b1" "a2")))

   (test-case "Tres nombres, repeticiones asimétricas"
     (check-equal?
      (solve '("x" "y" "x" "x" "y" "z" "z" "z"))
      '("OK" "OK" "x1" "x2" "y1" "OK" "z1" "z2")))

   ;; ----------------------------------------------------------
   ;; Lista vacía
   ;; ----------------------------------------------------------
   (test-case "Lista vacía"
     (check-equal? (solve '()) '()))

   ;; ----------------------------------------------------------
   ;; Nombres con números dentro del string
   ;; ----------------------------------------------------------
   (test-case "Nombre que contiene dígitos"
     (check-equal?
      (solve '("user1" "user1" "user2"))
      '("OK" "user11" "OK")))

   ;; ----------------------------------------------------------
   ;; Propiedad: el primer registro SIEMPRE es OK
   ;; ----------------------------------------------------------
   (test-case "Propiedad — primera aparición siempre es OK"
     (for ([name '("alice" "bob" "carlos" "diana" "eve")])
       (check-equal?
        (first (solve (list name)))
        "OK"
        (format "Falló con: ~a" name))))

   ;; ----------------------------------------------------------
   ;; Propiedad: longitud de salida = longitud de entrada
   ;; ----------------------------------------------------------
   (test-case "Propiedad — salida tiene la misma longitud que entrada"
     (for ([n '(0 1 5 10 20)])
       (define input (for/list ([i (in-range n)]) "same"))
       (check-equal?
        (length (solve input)) n
        (format "Falló con n=~a" n))))

   ;; ----------------------------------------------------------
   ;; Propiedad: sufijo numérico es estrictamente creciente
   ;; por nombre (el k-ésimo duplicado lleva número k)
   ;; ----------------------------------------------------------
   (test-case "Propiedad — sufijos numéricos crecientes para mismo nombre"
     (define repeticiones 8)
     (define results (solve (make-list repeticiones "test")))
     ; primero OK, luego test1, test2, ..., test7
     (check-equal? (first results) "OK")
     (for ([k (in-range 1 repeticiones)]
           [r (in-list (rest results))])
       (check-equal? r (string-append "test" (number->string k)))))

   ;; ----------------------------------------------------------
   ;; Independencia entre sesiones (cada llamada a solve
   ;; tiene su propia tabla — no hay estado global)
   ;; ----------------------------------------------------------
   (test-case "Sesiones independientes — la tabla no persiste entre llamadas"
     (define r1 (solve '("alice" "alice")))
     (define r2 (solve '("alice" "alice")))
     (check-equal? r1 r2)
     (check-equal? r1 '("OK" "alice1")))

   ;; ----------------------------------------------------------
   ;; Caso grande: 100 repeticiones del mismo nombre
   ;; ----------------------------------------------------------
   (test-case "100 repeticiones del mismo nombre"
     (define results (solve (make-list 100 "spam")))
     (check-equal? (first results) "OK")
     (check-equal? (last results) "spam99")
     (check-equal? (length results) 100))))

;; ============================================================
;; Ejecutar
;; ============================================================

(module+ main
  (displayln "╔══════════════════════════════════════════╗")
  (displayln "║  CF 4C — Registration System | rackunit  ║")
  (displayln "╚══════════════════════════════════════════╝")
  (newline)
  (define resultado (run-tests registration-tests 'verbose))
  (newline)
  (if (= resultado 0)
      (displayln "✓  Todas las pruebas pasaron.")
      (displayln (format "✗  ~a prueba(s) fallaron." resultado))))
