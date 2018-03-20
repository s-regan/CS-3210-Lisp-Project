Project #3: Lisp

Spring 2018, Gurka

Problems:

1.Search.  A function that receives an integer and a list.  The list will have a mix of integers, characters, and words, and may have nested lists.  The function returns a count of how many times the integer value is found.   
Only counts first on nested list


2.Divide by 5 counter.  A function that receives a list of numbers, and returns a count of how many are divisible by 5.  Uses a helper predicate function that returns true if its numeric argument is evenly divisible by 5.

3.Remove negatives.  A function that receives a list of integers and returns a list with all negative values removed.

4.Count groups.  Given a list, count the number of groups (a group is two or more identical adjacent items).  Assumption: the list contains no nested lists.

5.Sort by recency.  Takes a word and a list of words.  If the word is not in the list, it is added at the beginning of the list.  If the word is in the list, its position is changed to be first in the list.  In both cases, the word most recently added is now at the front of the list.  Assumption: the incoming list has no duplicates.

6.Enforce an upper limit.  A function that receives a number (an upper limit) and a list.  The list may have nested lists.  The function produces a new list in which all values originally over the limit are replaced by the limit.  Assumption: the limit will be a number.

7.Almost sorted.  A function that receives a list of numbers and returns true or nil for whether the list is almost sorted in ascending order.  An almost sorted list is one in which the number of inversions is 0.2n or less (n being the number of elements in the list).  An inversion is a pair of adjacent values in the wrong order.  Completely sorted lists (no inversions) are considered to not be almost sorted.  Write a separate function to count inversions.  Lisp note: arithmetic computations are done with integers, unless at least one operand is real; integer division produces a rational number.  Assumption: the list contains no duplicates.


8.Twin.  Receives a list and doubles all elements.  Assumption: the list is not nested.
Example:   
(twin ’(dog 2 cat))  ==>  (dog dog 2 2 cat cat)

9.Untwin.  Receives a list which may have paired (equal) elements, and removes one of each pair.  Pairs are defined as adjacent equal values  Assumptions: the list is not nested, no more than two identical elements will be adjacent.

10.Flatten.  Receives a list of arbitrary depth, and returns a list containing all the same elements, in the same order, but now at the top level.  Note that flattening an embedded NIL removes it.

11.Expression syntax checker.  A function which checks the syntax of a (possibly nested) list of expressions with numeric operands and binary infix operators (the operators are the actual words): plus, minus, times, dividedby.  The checker returns nil if any of the following conditions are found, true otherwise: wrong number of tokens in an expression (i.e., not three), operands not numeric, invalid operator.  Do not consider any other errors.  Your main function should call three helper functions which each check one condition.  
Examples of top-level function:
(checker  ‘(7 plus 11))  ==>  T			(true, valid)
(checker  ‘(25 minus (17 times 12)))  ==>  T		(true, valid)
(checker  ’(-4 plus))  ==>  nil				(wrong number of operands)
(checker  ’(-4 plus (cat minus dog)))  ==>  nil	(operands not numeric)
(checker  ’((7 + 3) minus 12))  ==>  nil	    	(invalid operator “+”)
(checker  ’(-4 plus (cat minus dog)))  ==>  nil   	(operands not numeric)

EXTRA CREDIT:
The function is named check-call.  It receives a list that is supposed to be a Lisp-like function call.  Your function checks that a) the first item in the list is a valid function name, and b) it has the right number of arguments.  It does not check argument types.

The function has two parameters: 1) a list of valid functions and the number of parameters they require, and 2) the function call to be checked.






