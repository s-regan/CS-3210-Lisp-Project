;;Expression syntax checker
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;A function which checks the syntax of a (possibly nested) 
;;list of expressions with numeric operands and binary infix operators (the operators are the actual words): 
;;plus, minus, times, dividedby.  The checker returns nil if any of the following conditions are found, 
;;true otherwise: wrong number of tokens in an expression (i.e., not three), operands not numeric, invalid operator.
;;Do not consider any other errors.  Your main function should call three helper functions which each check one condition. 
;; Parameters:
;;   expr - a list representing an expression

(defun checker (expr)
  (and (mytoken expr)(checkop expr)(checkop expr)))
	   
(defun mytoken (expr)
  (= 3 (length expr)))
  
  (defun checkop (expr)
  (and (or (numberp (car expr))
       (and (listp (car expr)) (checker (car expr))))
       (or (numberp (thirdop expr))(and (listp (thirdop expr)) (checker (thirdop expr))))))
	   
(defun thirdop (lst)
  (car (cdr (cdr lst))))

 (defun checkop (expr)
  (or (eq (car (cdr expr)) 'plus)
      (eq (car (cdr expr)) 'minus)
      (eq (car (cdr expr)) 'times)
      (eq (car (cdr expr)) 'divideby)))

;; test plan for Expression syntax checker:
;; test plan for checker:  
;; category/description               data             expected result  
;;-------------------------------------------------------------------------------------------------
;; empty list                    ()                            nil
;; unnested, valid               (1 times 2)                   t
;; nested, valid                 (1 plus (2 times 3))          t
;; unnested, invalid             (a times 1)                   nil
;; nested, invalid               (1 minus (2 divideby a))      nil
;;-------------------------------------------------------------------------------------------------
;; test plan for mytoken:
;; test case                     data                         expected result 
;;-------------------------------------------------------------------------------------------------
;; empty list                    ()                           nil
;; single atom list              (a)                          nil
;; two atom list                 (a b)                        nil
;; three atom list               (a b c)                      t
;; four atom list                (a b c d)                    nil
;;-------------------------------------------------------------------------------------------------
;; test plan for checkop(assumption: numeric operands):
;; test case                     data                        expected result  
;;-------------------------------------------------------------------------------------------------
;; valid operator: plus          (1 plus 2)                  t
;; valid operator: minus         (1 minus 2)                 t
;; valid operator: times         (1 times 2)                 t
;; valid operator: divideby      (1 divideby 2)              t
;; invalid operator              (1 check 2)                 t
;;-------------------------------------------------------------------------------------------------
;; test plan for checkop (assumption: correct number of tokens):
;; test case                     data                         expected result 
;;-------------------------------------------------------------------------------------------------
;; numeric operands              (1 x 2)                      t
;; left numeric operand          (1 x a)                      nil
;; right numeric operand         (a x 2)                      nil
;; non-numeric operands          (a x b)                      nil
