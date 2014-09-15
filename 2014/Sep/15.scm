;; -*- coding: utf-8 -*-

;; 15 Sep 2014

;; 7.2 p64

;; (for-each <proc> <list>)

(for-each (lambda (x) (print "> " x)) '(a b c))

(define (tree-walk walker proc tree)
  (walker (lambda (elt)
            (if (list? elt)
                (tree-walk walker proc elt)
                (proc elt)))
          tree))

(tree-walk for-each print
           '((1 2 3) 4 5 (6 (7 8))))

(define (reverse-for-each proc lis)
  (for-each proc (reverse lis)))

(tree-walk reverse-for-each print
           '((1 2 3) 4 5 (6 (7 8))))

(tree-walk map (lambda (x) (* x 5))
           '((1 2 3) 4 5 (6 (7 8))))

(define (reversed walker)
  (lambda (proc lis)
    (walker proc (reverse lis))))

(tree-walk (reversed map) (lambda (x) (* x 5))
           '((1 2 3) 4 5 (6 (7 8))))


