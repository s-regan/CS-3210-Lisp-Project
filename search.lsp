;;Search
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;A function that receives an integer and a list.  The list will have a mix of integers, 
;;characters, and words, and may have nested lists.  The function returns a count of how many 
;;times the integer value is found.   
;; Parameters:
;;   x - a number to search for
;;   lst - a list
;; Assumptions:
;;   1. list can have numbers, characters, words, and/or nested lists

(defun mysearch( x lst)
	(cond ((null lst) 0)
		(( listp( car lst))(+ (mysearch x(car lst))(mysearch x (cdr lst))))
		((and (numberp (car lst))(= x (car lst)))(+ 1 (mysearch x(cdr lst))))
		(t (mysearch x (cdr lst)))))


;; test plan for Search:  
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; empty list                     1, ()                    0
;; single atom in list            1, (1)                   1
;; single atom not in list        1, (2)                   0
;; not in list                    1,( 2 3 4 )              0
;; in list                        1, ( 1 2 3 4 1)          2
;; in nested list                 1, ((1))                 1
;; words in list                  1,( one 1 two 2)         1