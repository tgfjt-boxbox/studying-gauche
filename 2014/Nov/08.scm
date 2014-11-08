;; -*- coding: utf-8 -*-

;; 8 Nov 2014

;; 7.5 p76


(apply cons '(1 2))
(cons 1 2)

(define (log . args)
  (print "args=" args)
  (apply append args))

(log '(a b c) '(1 2 3) '(7 8 9))

(define (make-logger func)
  (lambda args
    (print "args=" args)
    (apply func args)))

(define append/log (make-logger list))

(append/log '(1 4 6) '(a b) '(x z))

(define cons/log (make-logger cons))
(cons/log 1 2)

