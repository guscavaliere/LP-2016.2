#lang racket

<<<<<<< HEAD
;a)
=======
;; a)
>>>>>>> 742e81c0ee9e9252afa5b26c6ac59ca1a209d7fd

(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

<<<<<<< HEAD
;Fatorial
=======

;; fatorial
>>>>>>> 742e81c0ee9e9252afa5b26c6ac59ca1a209d7fd

(define (id x) x)

(define (next x) (+ 1 x))

(define (fact x)
  (product id 1 next x))

<<<<<<< HEAD
;Testes
=======
; testes
>>>>>>> 742e81c0ee9e9252afa5b26c6ac59ca1a209d7fd

(require rackunit)

(check-equal? (fact 6) 720)

(check-equal? (fact 9) 362880)

<<<<<<< HEAD
; b) Pi de John Wallis
=======

;; b) Pi de John Wallis
>>>>>>> 742e81c0ee9e9252afa5b26c6ac59ca1a209d7fd

(define (pi-wallis x)
  (if (even? x)
      (/ (+ 2 x) (+ 1 x))
      (/ (+ 1 x) (+ 2 x))))

(define (pi-sum x)
  (product  pi-wallis 1 next x))


<<<<<<< HEAD
; c) Produto interativo
=======
;; c) Produto interativo

>>>>>>> 742e81c0ee9e9252afa5b26c6ac59ca1a209d7fd
(define (product-it term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)(* (term a) result))))
  (iter a 1))

<<<<<<< HEAD
;Fatorial interativo
=======
;; fatorial interativo

>>>>>>> 742e81c0ee9e9252afa5b26c6ac59ca1a209d7fd
(define (fact-it x)
  (product-it id 1 next x))

        
<<<<<<< HEAD
;Testes
=======
;; testes
>>>>>>> 742e81c0ee9e9252afa5b26c6ac59ca1a209d7fd

(require rackunit)

(check-equal? (fact-it 6) 720)
<<<<<<< HEAD

(check-equal? (fact-it 9) 362880)
  
  
=======
(check-equal? (fact-it 9) 362880)
  
  
>>>>>>> 742e81c0ee9e9252afa5b26c6ac59ca1a209d7fd
