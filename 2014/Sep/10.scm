;; -*- coding: utf-8 -*-

;; 10 Sep 2014

;; p55

(find odd? '(2 1 3 5 7 8))
(find char-alphabetic? '(#\1 #\3 #\t))

(if (null? '(1))
    #t
    #f)

;; pred - predicate - 述語
(define (find pred lis)
  (if (null? lis)
      #f
      (if (pred (car lis))
          (car lis)
          (find pred (cdr list)))))

(find even? '(2 1 3))

;; cond
(define (grade-you score)
  (cond
   ((<= 80 score) #\A)
   ((and (<= 60 score) (>= 79 score)) #\B)
   ((and (<= 40 score) (>= 59 score)) #\C)
   ((> 40 score) #\D)))

(grade-you 10)
