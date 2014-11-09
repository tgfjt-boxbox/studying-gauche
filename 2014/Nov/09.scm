;; -*- coding: utf-8 -*-

;; 9 Nov 2014

;; 7.6 p79

(use util.match)

(define (append2 a b)
  (if (pair? a)
      (cons (car a) (append2 (cdr a) b)) b))

(define (append . args)
  (match args
         [() '()]
         [(a) a]
         [(a . b) (append2 a (apply append b))]))


(append)
(append '(1 2))
(append2 (list 1 2) (list 4 5))

(define (max-number lis)
  (match lis
  [() (error "hoge")]
  [(x . y) (fold (lambda (a b)
                   (if (> a b) a b))
                 x y)]))

(max-number (list 8 71 951 11))

;;準クオート
'(+ 1 2 3 4)
'(list 3 4 (list 2 3))


