;; -*- coding: utf-8 -*-

;; 12 Sep 2014

;; これは非末尾再帰
;; 再帰的の結果に毎回+1
(define (how-many lis)
  (if (null? lis)
      0
      (+ 1 (how-many (cdr lis)))))

(how-many '(1 2 3 1 2))

;; これは末尾再帰
;; 残りのデータ と 今までの結果を渡してあげる
(define (how-many lis)
  (define (rec-length lis n)
    (if (null? lis)
        n
        (rec-length (cdr lis) (+ n 1))))
  (rec-length lis 0))

(how-many '(1 2 3 1 2))


;; reverse 末尾再帰を書く。
;; 空リストとリストを渡し、空リストcar を入れ、cdrと渡して再帰。
;; 残りリストが空になれば、空リストだったものには。
(define (reverse lis)
  (define (rev lis first)
    (if (null? lis)
        first
        (rev (cdr lis) (cons (car lis) first))))
  (rev lis '()))

(reverse '(1 2 3 4 5))
