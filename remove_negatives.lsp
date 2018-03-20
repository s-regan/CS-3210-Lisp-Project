;;Remove Negatives
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;A function that receives a list of integers and returns a list with all negative values removed
;; Parameters:
;;   x - int to be searched
;;   lst - a list
;; Assumptions:
;;   1. only counts on first nested list
;;   2. only numbers in list

(defun remove-neg (lst)
	(cond ((null lst) nil)
		  ((>= (car lst) 0)
		  (cons (car lst)(remove-neg(cdr lst))))
		  (t (remove-neg (cdr lst)))))

;; test plan for Remove Negatives:  
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; empty list                          ()                     NIL
;; single atom, not negative           (1)                    1
;; single atom, negative               (-1)                   NIL
;; list, no negatives                  (1 2 3 4 5)            1 2 3 4 5
;; list, only negatives                (-1 -2 -3)             NIL
;; list, some negatives                (-1 1 -2 2 -3 3)       1 2 3