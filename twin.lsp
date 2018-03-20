;;Twin
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;Receives a list and doubles all elements.  Assumption: the list is not nested.
;; Parameters:
;;   lst - a list
;; Assumptions:
;;   1. lst is not nested
;;   2. no more than two identical elements will be adjacent

(defun twin (lst)
  (cond ((null lst) nil)
    ((append (list (car lst)(car lst))(twin(cdr lst)))) 
    (t (cons(car lst)(cons(car lst)(untwin(cdr lst)))))))

;; test plan for Twin:  
;; category/description               data             expected result      
;;-------------------------------------------------------------------------------------------------
;; empty list                         ()               ()
;; list with 1 element                (x)              (x x)
;; no duplicates                      (1 2 123)        (1 1 2 2 123 123)
;; duplicates: one atom               (x x x)          (x x x x x x)
;; duplicates: multiple atoms         (x x 1)          (x x x x 1 1)