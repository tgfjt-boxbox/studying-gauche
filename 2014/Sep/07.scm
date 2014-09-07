;; 07 Sep 2014
;; 4.1.2 p20

;; Gaucheに演算子は無い。全て手続き

;; 6
(+ 1 2 3)

;; sqrt = square root

;; 4
(sqrt (* 2 (+ 3 7 (* -1 2))))

(define (sqrt2 x y)
  (sqrt (+ x y)))

;; 3
(sqrt2 3 6)
