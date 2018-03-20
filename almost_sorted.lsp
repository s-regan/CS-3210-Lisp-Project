;;Almost sorted
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;A function that receives a list of numbers and returns true or nil for whether the 
;;list is almost sorted in ascending order.  An almost sorted list is one in which the 
;;number of inversions is 0.2n or less (n being the number of elements in the list). 
;; An inversion is a pair of adjacent values in the wrong order.  Completely sorted lists
;;(no inversions) are considered to not be almost sorted.  Write a separate function to count 
;;inversions.  Lisp note: arithmetic computations are done with integers, unless at least one 
;;operand is real; integer division produces a rational number.  Assumption: the list contains no duplicates.
;; Parameters:
;;   lst - a list of numbers
;; Assumptions:
;;   1. lst contains no duplicates
;;   2. lst is not nested

 (defun count-inversions (lst)
  (cond ((null lst) 0)
        ((equal (length lst) 1) 0)
        ((> (car lst) (car (cdr lst))) (+ 1 (count-inversions (cdr lst))))
        (t (count-inversions (cdr lst)))))

(defun is-almost-sorted (lst)
  (cond ((=(count-inversions lst) 0) nil)
        ((>= (count-inversions lst) (/ (length lst) 5)) nil)
        (t)))

;; test plan for Almost Sorted:  

;; test plan for count-inversions: 
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; empty list                        ()                        0
;; single atom list                  (1)                       0
;; sorted list                       (1 2 3 4 5)               0
;; one inversion                     (1 2 4 3 5)               1
;; two inversions                    (2 1 3 5 4)               2
;; reversed list                     (5 4 3 2 1)               4
;;-------------------------------------------------------------------------------------------------
;; test plan for is-almost-sorted: 
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; empty list                        ()                        nil
;; single atom list                  ()                        nil
;; sorted list of length <= 5        (1 2 3)                   nil
;; length <= 5 with one inversion    (1 3 2)                   nil
;; length <= 5 with two inversions   (3 2 1)                   nil
;; sorted list of length > 5         (1 2 3 4 5 6)             nil
;; length > 5 with one inversion     (1 2 3 4 6 5)             t
;; length > 5 with two inversions    (1 3 2 4 6 5)             nil
;; length > 10 with two inversions   (1 3 2 4 6 5 7 8 9 10 11) t
;; length > 10 with three inversions (1 3 2 4 6 5 7 9 8 10 11) nil

