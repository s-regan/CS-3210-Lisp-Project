;;Divide by 5 counter
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;A function that receives a list of numbers, and returns a count of how 
;;many are divisible by 5.  Uses a helper predicate function that returns 
;;true if its numeric argument is evenly divisible by 5.
;; Parameters:
;;   x - a number from the list
;;   lst - a list
;; Assumptions:
;;   1. list only contains numbers

(defun mod5 (x)
	(= (mod x 5) 0))

(defun div (lst)
    (cond ((null lst) 0)
         ((mod5 (car lst))(+ 1 (div (cdr lst))))
         (t (div (cdr lst)))))

;; test plan for Divide by 5 counter:  
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; empty list                          ()                     0
;; single atom not div by 5            (1)					  0
;; single atom div by 5                (5) 					  1
;; list with 1 div by 5				   (1 2 3 4 5)            1
;; list with more than 1 div by 5      (5 10 6 7)             2
;; list of all div by 5                (5 10 15 20)           4