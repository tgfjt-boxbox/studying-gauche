;; -*- coding: utf-8 -*-

;; 14 Sep 2014


(use rfc.http)

(define (get-amazon pathname)
  (receive (status head body)
           (http-get "www.amazon.co.jp" pathname)
           head))

(print (get-amazon "/b?ie=UTF8&node=3102459051"))
