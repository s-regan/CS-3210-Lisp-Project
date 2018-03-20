;;Untwin
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;Receives a list which may have paired (equal) elements, and removes one of each pair.  
;;Pairs are defined as adjacent equal values  Assumptions: the list is not nested, 
;;no more than two identical elements will be adjacent.
;; Parameters:
;;   lst - a list
;; Assumptions:
;;   1. lst is not nested
;;   2. no more than two identical elements will be adjacent


(defun untwin (lst)
  (cond((null lst) nil)
   ((null (cdr lst)) lst)
   ((equal (car lst) (car (cdr lst)))(untwin(cdr lst)))
   (t (cons (car lst) (untwin (cdr lst))))))

;; test plan for Untwin:  
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; empty list                         ()               ()
;; list with 1 atom                   (a)              (a)
;; list with no pairs                 (a b c)          (a b c)
;; list with one pair                 (a b b c)        (a b c)
;; list with non pair duplicates      (a b a)          (a b a)
;; list with pairs and non pairs      (a a b a)        (a b c)
