#!/usr/local/bin/gosh
;; -*- coding: utf-8 -*-

;; 08 Sep 2014
;; 5.1 p31

;; $ gosh 08.scm hoge fuga
(define (main args)
  (print (string-join (cdr args) ", "))
  (print (car args))
  0)

;; hoge, fuga
;; 08.scm

;; 5.2
(define (λ name)
  (format name))

(λ "hoge")

;; 5.3

#| foo
bar
|#

;; TODO: どうにかしないと。
(print "この式についてのコメント")      ; M-;

;;; 今日は
;;; あれだし
;;; これだし
;;; 雨で
;;; よくない
;;; M-3 M-;を使おう


;; 5.5 予約語はない！

;; なんでも定義
(define (あいうえお args)
  (print args))

;; print
(あいうえお "hoge")


;; 6.1 p42

;; 式
(+ 5 (+ 1 2 (* 1 2)))

;; データ
'(4 (+ 1 2 (* 1 2)))


;; 6.2 

;; car と cdr
(car '(3 2 1 0))                        ;3
(cdr '(3 2 1 0))                        ;(2 1 0)

;; cons
;; (1 2 3)
(cons 1 '(2 3))
(list 1 2 3)

;; 式というデータを与えたのでそのままリストが返ってくる
'(1 2 3)

;; 新たなリストが作られて返ってくる
(list 1 2 3)

(null? '())                             ;#t
(null? 3)                               ;#f

(pair? '(1 1))                          ;#t

(define-values (the-pair) (list 3 4 5))

(pair? the-pair)                        ;#t


;; 6.3

(define (square-num l)
  (fold * 1 l))

;; 1 * 2 * 3 * 4 = 24
(square-num '(1 2 3 4))



(cons 'c (cons 'b (cons 'a '())))

(fold cons '() '(a b c))



;; 6.4 p50

(define (fold2 pr init li)
  (print "fold評価")
  (if (null? li)
      init
      (fold2 pr (pr (car li) init) (cdr li))))

;; 初期値を init. li に対して pr していく。
;; li が空であれば、初期値init を返せば良い。
;; そうでない場合は、car-li と初期値を pr し、
;; 残りの cdr-li に対して再帰していく。

(fold2 + 0 '(8 2 3))

