(use srfi-27)

(take-right* '(a b c d) 3)

(define hisname '("ボ" "ン" "ジョ" "ヴィ"))

(print list (ref hisname (random-integer 4)) (ref hisname (random-integer 4)))
(apply list (ref hisname (random-integer 4)) (list (ref hisname (random-integer 4))))
(string=? (string-join '("a" "b")) "ab")
(string-join '("a" "b") "")

(define (badname lis)
     (apply list (ref lis (random-integer 4))
            (list (ref lis (random-integer 4)))))

(append (badname hisname) (badname hisname))
(string=? (string-join (append (badname hisname) (badname hisname))) "ジョンボン")
(string-join (append (badname hisname) (badname hisname)) "")
(string-join (take-right* (append '("a" "ジョン") (badname hisname) ) 3) "")
(string=? (string-join (take-right* '("a" "ジョン" "ボン" "ジョヴィ") 3) "") "ジョンボンジョヴィ")

(define (gene lis)
  (if (string=? (string-join (take-right* lis 6) "") "ジョンボンジョヴィ")
      (string-join lis "・")
      (gene (append lis (badname hisname)))))

(print (gene '()))

(print "
＿人人人人人人人人人人人人人＿
＞  Livin' On A Prayer！  ＜
￣Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y￣")
