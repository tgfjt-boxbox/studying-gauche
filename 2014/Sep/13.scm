;; -*- coding: utf-8 -*-

;; 13 Sep 2014

;; 7 p61

(define (ttdk num)
  (cons num '()))

ttdk                                    ;#<closure ttdk>

(define ttdk2 ttdk)

(ttdk2 3)

(define (ttdk) #t)

(ttdk)                                  ; #t
(ttdk2 3)                               ; (3)


;; lambda! λ
(lambda (a b) (+ (* a a) (* b b)))      ;<#closre #f>

;; lambdaの評価は値
(define sq-sum
  (lambda (a b) (+ (* a a) (* b b))))

(sq-sum 2 4)                            ;16

;; 手続き → <#closure ...>
;; define hoge → name:hoge - <#closure>

(define (len lis)
  (fold (lambda (a b) (+ b 1)) 0 lis))
(len '(3 4 4 ))

;; (λ (x (* x x))
