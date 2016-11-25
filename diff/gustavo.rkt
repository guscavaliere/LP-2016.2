#lang racket

(require levenshtein)

(define (distance a b)
  (string-levenshtein a b))


(define (diff list-a list-b limit test key)
  (aux list-a list-b '() limit test key))

(define (aux list-a list-b out limit teste key)
  (if (empty? list-a)
      (reverse out)
      (aux (cdr list-a) list-b (cons(map (lambda (x) (teste (key(car list-a)) (key x))) list-b) out) limit teste key)))



(define lista-1 (list "Opa" "você" ))
(define lista-2 (list "Oppa" "você" ))

;(require racket/trace)
;(trace aux)