;; 06 Sep 2014

(use text.html-lite)
(use text.tree)

(define (sep06 path)
  (define out (open-output-file path))
  (write-tree
   `(,(html-doctype :type :html-5)
     ,(html:html
       (html:head (html:title "Gauche Studying Sep/06"))
       (html:body
        (html:h1 "output HTML!!")
        (html:div
         (html:p :class "hoge fuga"
                 "interesting tag element indent")
         (html:a :href "http://www.tagpanda.co.jp/" :target "_blank"
                 "TAG PANDA inc."))
        (html:footer
         (html:p "copyright &copy; tgfjt")))))
   out)
  (close-output-port out))

(define (main args)
  (sep06 "2014/Sep/06.html")
  (print "Createted: 2014/Sep/06.html")
  0)
