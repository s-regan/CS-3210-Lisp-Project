;;Count Groups
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;Given a list, count the number of groups (a group is two or more 
;;identical adjacent items).  Assumption: the list contains no nested lists.
;; Parameters:
;;   lst - a list of atoms
;; Assumptions:
;;   1. No nested lists

(defun count-clumps (lst)
  (cond ((null lst) 0 )
        ((beginclump lst) 
          (+ 1 (count-clumps (laterclump (cdr lst)))))
        (t (count-clumps (cdr lst)) )))

(defun beginclump (lst)
  (equal (car lst) (car (cdr lst))))

(defun laterclump (lst)
  (cond ((equal (cdr lst) nil) nil)
        ((beginclump lst) (laterclump (cdr lst)))
        (t(cdr lst)) ))

;; test plan for Count Groups:  
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; test case                              data                   expected result      
;;-------------------------------------------------------------------------------------------------
;; empty list                             ()                     0
;; single atom list                       (data)                 0
;; no clumps                              (a b c d e)            0
;; no clumps with dupes                   (a b a b c)            0       
;; one clump                              (a a b c d)            1
;; whole list clump                       (a a a a a)            1
;; mixed clumps                           (a a b c c c d d)      3