;; -*- coding: utf-8 -*-

;; 18 Sep 2014

;; 7.3 p70

(let ((a 4)
      (b 12))
  (+ a b))

((lambda (a b)
  (+ a b))
  4 12)


;; lambda -> let -> scope
