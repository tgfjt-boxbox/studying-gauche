;; -*- coding: utf-8 -*-

;; 5 Nov 2014

;; 7.4 p72

;; 可変長引数

(define (func a b . c) (print "a=" a ", b=" b ", c=" c))
(func 2 4 1)
(func 2 4 6 7)

'(1 2 3 4)
'(1 2 . (3 4))

(list 1 2 3)
(list 1 . (3 4))
(list)
'(1)

;; listを再定義してみる練習
(define (list . a)
  (if (null? a)
      '()
      a))

(list)
(list 10)
(list 1 2)
(list 4 5 6)
(list 6 . (7 0))

