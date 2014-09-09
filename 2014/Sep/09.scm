;; -*- coding: utf-8 -*-

;; 08 Sep 2014

;; https://www.shido.info/lisp/scheme3.html
;; cons [コンスセル]
;; 2つのアドレスを入れたメモリ領域
;; 1つは car, もう1つは cdr

;; '() を空リスト。-> () を quote したもの！ '() 
;; 最後の cdr が 空リストであるコンスセルを リスト。 (cons '() '())
;; 数値、文字、文字列、ベクトルは atom -> コンスセルを使っていない。

(cdr (cons '() '())) ; ()

;; (#\I "saw" 3 "girls")
(cons #\I
      (cons "saw"
            (cons 3
                  (cons "girls" '()))))

(car '(0))                              ;0
(cdr '(0))                              ;()
(car '((1 2 3) (4 5 6)))                ;1
(cdr '(1 2 3 . 4))                      ;(2 3 . 4)
(cdr (cons 3 (cons 2 (cons 1 '()))))    ;()

;; ("Sum of" (1 2 3 4) "is" 10)
(cons "Sum of"
      (cons (list 1 2 3 4)
            (cons "is"
                  (cons 10 '()))))

;; p53
;; #?= で 式の評価値を表示させる。
(define (fold proc init lis)
  (if (null? lis)
      init
      (fold proc (proc (car lis) init) #?=(cdr lis))))

(fold + 0 '(1 2 3 4 5 6))

(+ 1 2 #?=(- 6 3))


;; 6.5
;; (last-pair '(1 2 3))
(define (last-pairs lis)
  (if (pair? (cdr lis))
      (last-pairs #?=(cdr list))
      lis))

(last-pair '(1 2 3 4 5))


(define (copy-list-double lis)
  (if (pair? lis)
      (cons (cons (car lis) (car lis)) (copy-list-double (cdr lis)))
  lis))

(copy-list-double '(b a c 0 12))


;; p54
(define (appen2 a b)
  (if (pair? a)
      (cons (car a) (appen2 (cdr a) b))
      b))

(appen2 '(1 2 3) '(a b))


;; car を cdr に appen2 する再帰
(define (reverse lis)
  (if (null? (cdr lis))
      lis
      (appen2 (reverse (cdr lis)) (list (car lis)))))

(reverse '(2 311 1))
