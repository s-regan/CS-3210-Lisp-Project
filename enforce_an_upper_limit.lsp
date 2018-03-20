;;Enforce an Upper Limit
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;A function that receives a number (an upper limit) and a list.  
;;The list may have nested lists.  The function produces a new list in which all 
;;values originally over the limit are replaced by the limit.  Assumption: the limit will be a number.
;; Parameters:
;;   lim - number to be used as upper limit
;;   lst - a list
;; Assumptions:
;;   1. lim is a number

(defun alimit (x y)
  (cond ((> y x) x)
        (t y)))
	
(defun enforce-limit (x lst)
  (cond ((null lst) nil )
        ((listp (car lst))(cons (enforce-limit x (car lst)) (enforce-limit x (cdr lst))))
        ((numberp (car lst))(cons (alimit x (car lst)) (enforce-limit x (cdr lst))) )
        (t (cons (car lst) (enforce-limit x (cdr lst))))))


;; test plan for Enforce and Upper Limit:  
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; empty list                     1, ()                    ()
;; one atom, less than limit      2, (1)                   (1)
;; one atom, great than limit     1, (2)                   (1)
;; nested atom, below limit       2, ((1))                 ((1))
;; nested atom, above limit       1, ((2))                 ((1))
;; list of numbers                3, (1 2 3 4 5)           (1 2 3 3 3)
;; nested list of numbers         3, (1 (2 3) ((4) 5))     (1 (2 3) ((3) 3)
;; list of random elements        3, (1 a (5 b) c () 100)  (1 x (3 y) z () 3)