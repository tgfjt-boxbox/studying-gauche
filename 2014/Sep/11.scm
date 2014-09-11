;; -*- coding: utf-8 -*-

;; 11 Sep 2014

;; 6.5 p55

;; cond [] も書ける。
(define (good-morning hour)
  (cond [(<= 8 hour) "OMG!"]
        [(and (<= 7 hour) (> 8 hour)) "DASH!"]
        [(and (<= 6 hour) (> 7 hour)) "GOOD MORNING!"]
        [(and (<= 5 hour) (> 6 hour)) "Nice to Study today!"]
        [(> 5 hour) "Did you sleep well???"]))

(good-morning 10)

(use srfi-19)

(define today (current-date))
(good-morning (date-hour today))

