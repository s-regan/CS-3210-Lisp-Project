Project 3: Lisp

Spring 2018, Gurka

Specifications
1.	This project is a series of individual problems, each of which is solved using one or more Lisp functions.
2.	begin by completing all thepractice functions handed out in class.
3.	Testing.  
a.	Develop all test cases first; these should be independent of the implementation language, and should not consider the specific logic that may be used.  
b.	Your solutions must corrrectly handle all the examples given in these specifications, however, do not include those as part of your submitted test data.  You should include test cases that fall in the same categories as the examples, plus more categories.
c.	Test plans should be thorough: include all obvious test cases.  (Suggestion: if you have not had much experience writing thorough test plans, come in for help or a test plan review.)  Each test case must be in a different category of possible incoming data and must have a different specific description.    
d.	All helper functions have their own description and test plan.  
e.	Do not write test cases for data beyond the problem definition.  
f.	See the example test plan below.  
g.	Solutions without a test plan and solutions that fail an accompanying test case are not considered completed, and that problem will receive no credit.  The same will be true for solutions that fail an obvious test case even if it was not included in the test plan (for example, empty and singleton lists).  Test plans missing basic test cases will lose points.
4.	Documentation.  
a.	For each solution (possibly composed of more than one function), document each function as follows: briefly describe what the function does, explain each parameter, include any assumptions / limitations (i.e., conditions your code is not expected to handle), and list your entire test plan.  Notice that all documentation is commented out, so that the entire file could be loaded and run as is. 
b.	Problems without documenation are not considered completed.  
c.	Documentation example, for one function:

;;  Your Name – CS 3210 – Fall 2016
;;  ============================
;;  adder function: adds all elements of a given list
;;  parameters:
;;       lst – a list of numbers
;;  assumptions:
;;       1. no nested lists
;;       2. all list elements are integers
;;       3. list sum will not exceed maxint

	< Lisp code here >

;;  test plan for adder:
;;  category / description		data		expected result
               	;;  ----------------------------------------------------------------------------------------------------
		;;  empty list				( )	   	       0
		;;  list with 1 element		(6)		       6
		;;  list sums to zero & duplicates	(-2 1 0 1)	       0
				<etc.>

5.	Development reminders.
a.	testing: check tests plans against specifications before coding, test as you go, add new test cases as needed, do regression testing after any change
b.	documentation: document as you go, check documentation against specifications, update documentation to reflect changes during development
c.	establish and stick to a development schedule
d.	develop logic in English before writing in Lisp
e.	don't make assumptions on the specifications
6.	Your function signatures and return types must match those given here in the examples.
7.	Use lowercase for any textual data.  "word" as used in the problem descriptions means a string of letters only (e.g., not "x123", not "a.?z").
8.	Some problems specify more than one function.  On other problems, you may choose to use additional helper functions  Think of small compact functions with associated helper functions for subtasks.   
9.	Place each problem's solution (of one or more functions, plus documentation, plus test plan) in a separate file.
10.	Do not make assumptions about incoming data types (list or atom, list contents) beyond those given in the problems. Always consider the empty and singleton lists (unless otherwise specified): what would a reasonable result be for these lists?  If needed, explain any of your decisions in your cover letter.
11.	One way to develop these programs is to have a working file (blah.lsp) containing your code, plus setf’s for the data test cases.  You can then just call the function several times without typing in all the data.  Example problem file:
<documented code here, as above>
(setf  data1  ’(2 17 0))
(setf  data2  ’( ))
      Use (load “blah.lsp”) in many interpreters, or find a menu choice named load, which will bring in the program function(s), and set up names for your test cases.  Then, at the prompt, type:
			(somefunc data1)
12.	You may consult general Lisp references as needed, but do not look up these specific problems.  There is a Moodle Lisp forum for discussions of the Lisp exercises handed out and done in class.  Work together sparingly; strive to master the functional paradigm.  
13.	Lisp quiz.  Continue to annotate the exercise sheet and quick reference sheet for use in the quiz.  Do not include any full functions on the materials used in the quiz.  The quiz will be on the assignment due date (March 15).
14.	Do not include any enhancements that go beyond the problems as specified here (although you may show these in the cover letter if you'd like me to see them).  Do not hand in incomplete or non-working solutions; you may hand in a subset of problems that are working correctly.
15.	Project submission is your claim that all test cases ran as specified, and that work is primarliy to completely your own (other than consultations with me).  
16.	Additional cover letter notes and questions to answer.
a.	Had you worked in Lisp or a Lisp dialect before?  If so, how much?
b.	What development environment did you use?  If it’s other than LispWorks, include a link to the software’s main page.
c.	How much time had you spent working on the practice exercises before receiving this assignment?
d.	How comfortable were you with recursion before beginning Lisp?  And now?
17.	Sbmission.  Post on Moodle:
a.	for each problem, source code file (one or more functions)
b.	one cover page for the whole assignment
Reminders: Submissions on Moodle must be in final form (not draft).
18.	Due date: Thursday, March 15 (last class meeting before break).  Submit only problems that are complete and correct.  For any missing solutions, explain in your cover letter what is wrong (problem not attempted, code written but tests failing, etc.).  Unfinished work will be covered in a meeting with me (rather than posting late assignments) – make an appointment for this review.  Suggested intermediate target dates: 
a.	March 3 (two days): test plans and documentation skeletons completed (i.e., everything but code)
b.	also March 3 (two days): specifications fully reviewed and questions answered
c.	March 13: project completed (leaving time for office hours help and time to resolve any final difficulties)


