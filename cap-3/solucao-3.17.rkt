#lang racket



(define (count-pairs x)
  (let ((encontrado '()))
    (define (aux x)
      (if (or (not(pair? x)) (member x encontrado))
          0
          (begin
            (set! encontrado (cons x encontrado))
            (+ (aux (car x))
               (aux (cdr x))
               1))))
    (aux x)))

(require rackunit)

(check-equal? (count-pairs (list 1 2 3 4 5)) 5)
(check-equal? (count-pairs (list 'a 'b 'c)) 3)
(check-equal? (count-pairs (list '(a b) 3)) 4)

