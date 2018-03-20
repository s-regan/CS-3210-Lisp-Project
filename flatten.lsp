;;Flatten
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;Receives a list of arbitrary depth, and returns a list containing all the 
;;same elements, in the same order, but now at the top level.  Note that flattening an embedded NIL removes it.
;; Parameters:
;;   lst - a list

(defun flatten (lst)
	(cond ((null lst) nil)
		  ((atom lst) (list lst))
          (t (append (flatten (car lst))(flatten (cdr lst))))))

;; test plan for Flatten:  
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; empty list                    ()                            ()
;; single atom list              (a)                           (a)
;; no nesting                    (a b c)                       (a b c)
;; nested empty list             (())                          ()
;; nested singleton              ((a))                         (a)
;; random nesting                (a (b c ()) () (d ((e)))      (a b c d e)