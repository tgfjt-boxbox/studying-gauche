(use text.html-lite)
(use text.tree)
(define out (open-output-file "2014/Sep/06.html"))
	(write-tree
	 `(,(html-doctype :type :html-5)
		 ,(html:html
			 (html:head (html:title "Gauche Studying Sep/06"))
			 (html:body
				(html:div
				 (html:p "HTML LINK")
				 (html:a :href "http://www.tagpanda.co.jp/"
								 "TAG PANDA inc."))
				(html:footer
				 (html:p "copyright &copy; tgfjt")))))
 out)
 (close-output-port out)
