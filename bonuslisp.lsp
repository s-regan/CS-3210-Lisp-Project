;;Bonus Lisp (Check-Call)
;;Sarah Regan-CS3210 (PPL)- Spring 2018
;;=================================================================================================
;;The function is named check-call.  It receives a list that is supposed to be a Lisp-like function call. 
;;Your function checks that 
;;a) the first item in the list is a valid function name, and 
;;b) it has the right number of arguments.  
;;
;; Parameters:
;;	 VALID FUNCTIONS (mycall) AND NUMBER OF ARGUMENTS:
;;   (stuff 4) 
;;	 (blob 1) 
;;	 (thing 0) 
;;	 (flapdoodle 3) 
;;	 (thingie 1)
;; 	 (junk 3) 
;;	 (func 2) 
;;	 (fn 0) 
;;	 (calc 4)
;; 	 (fun 2)
;;
;;   checksub- check substring (function call to be checked)
;;
;; Assumptions:
;;   1. It does not check argument types.
;;	 2. Guaranteed to be non-empty
;;	 3. Correct format
;; 	 4. Only non-negative counts
;;   5. Not ordered in any way

;;sets the functions and how many number of arguments they take
(setf mycall `((stuff 4) (blob 1) (thing 0) (flapdoodle 3) (thingie 1) (junk 3) (func 2) (fn 0) (calc 4) (fun 2)))
			
(defun numberofargs(lst number)
 (= (length lst) number))
  
  
(defun check-call (mycall checksub)
  (cond ((or (null checksub) (null mycall)) nil)
        ((equal (car (car mycall)) (car checksub))(numberofargs(cdr checksub) (car (cdr (car mycall)))))
        (t (check-call (cdr mycall) checksub))))

;; test plan for Check-call:  
;; category/description               data            										 expected result  
;;----------------------------------------------------------------------------------------------------------------------
;; sample test                      (check-call mycall `(stuff  33  lst  (a b c)  101))             T
;; sample bad					    (check-call mycall `(thing happy))							   NIL
;; not enough arguments 			(check-call mycall `(fun lst))								   NIL
;; too many arguments 				(check-call mycall `(blob  33  lst  (a b c)  101))		       NIL
;; empty (no list to check)			(check-call mycall `())										   NIL
;; correct number of arguments		(check-call mycall `(blob lst))						 	        T
;; correct number of arguments		(check-call mycall `(thing))						   		    T
;; correct number of arguments		(check-call mycall `(flapdoodle 1 2 ( 1 2 3)))					T			
;; correct number of arguments		(check-call mycall `(thingie lst))								T
;; correct number of arguments		(check-call mycall `(junk () () ()))							T
;; correct number of arguments		(check-call mycall `(func 1 2))									T
;; correct number of arguments		(check-call mycall `(fn))										T
;; correct number of arguments		(check-call mycall `(calc 33  lst  (a b c)  101))				T
;; correct number of arguments		(check-call mycall `(fun a x))									T
	


