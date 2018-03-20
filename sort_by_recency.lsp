;;Sort By Recency
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;Takes a word and a list of words.  If the word is not in the list, it is added at 
;;the beginning of the list.  If the word is in the list, its position is changed to
;;be first in the list.  In both cases, the word most recently added is now at the 
;;front of the list.  Assumption: the incoming list has no duplicates.
;; Parameters:
;;   word - a string consisting only of letters
;;   lst - a list of words
;; Assumptions:
;;   1. lst contains no duplicates
;;   2. lst is not nested 

(defun make-recent (x lst)
  (cons x (my-remove x lst)))
 
(defun my-remove (x lst)
  (cond ((null lst) nil)
        ((equal x (car lst)) (cdr lst))
        (t (cons (car lst) (remove x (cdr lst))))))

;; test plan for Sort By Recency: 
;; test plan for make-recent:  
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; empty list                               a, ()             (a)
;; atom in list                             a, (a)            (a)
;; atom not in list                         a, (b)            (a b)
;; list containing word at front            a, (a b c)        (a b c)
;; list containing word not at front        a, (b a c)        (a b c)
;; list not containing word                 a, (b c)          (a b c)
;;-------------------------------------------------------------------------------------------------
;; test plan for my-remove: 
;; test case                                data               expected result
;;-------------------------------------------------------------------------------------------------
;; empty list                               a,()               ()
;; singleton of word                        a,(a)              ()
;; singleton not of word                    a,(b)              (b)
;; list containing word at front            a,(a b c)          (b c)
;; list containing word not at front        a,(b a c)          (b c)
;; list not containing word                 a,(b c)            (b c)