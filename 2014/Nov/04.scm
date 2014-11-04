;; -*- coding: utf-8 -*-

;; 4 Nov 2014

;; 7.3 p71

(let* ((x (+ 1 2))
       (y (* 2 x))
       (z (- 9 y)))
  (+ 10 z))

;; 呼ばれた時の a が使える。
(letrec ((a 10)
         (b (lambda (x) (+ a x))))
  (b 4))


;; 数字だけ全部足す
(letrec ((sum (lambda (lis)
                (cond [(null? lis) 0]
                      [(number? (car lis)) (+ (car lis)(sum (cdr lis)))]
                      [else (sum (cdr lis))]))))
  (sum '(1 3 #f 6 #t 9)))
