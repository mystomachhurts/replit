;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |new assignmetn10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 10 - Lists and Recursion
Submit on Google Classroom by the end of class.

If a question asks you to make a function,
it must follow the complete design recipe
including a purpose statement, signature
and appropriate tests to recieve full credit

If a question asks you to make a structure,
it must follow the complete design recipe
including a definition, interpretation,
and appropriate examples to recieve full credit
|#

#| Question 1
Create the following lists:

- An empty list called MT-LIST
- A list called LIST-1 with 3 cons-ed to MT-LIST
- A list called LIST-2 with 2 cons-ed to LIST-1
- A list called LIST-3 with 1 cons-ed to LIST-2
- A list called "NAMES" with at least 3 names.

|#

(define MT-LIST '())
(define LIST-1 (cons 3 MT-LIST))
(define LIST-2 (cons 2 MT-LIST))
(define LIST-3 (cons 1 MT-LIST))

#| Question 2
Create a function called (list-product)
that takes in a list of numbers
and multiplies all the numbers

For example,
(list-product (list 1 2 3)) -> 6
|#
;Purpose: multiply a list of numbers 
;Signature: function + cond = int
(define (list-product n)
(cond
  [(empty? n)1]
  [(cons? n) (* ( car n)
                (list-product (cdr n)))]))

(define myP (list 1 2 3))
(check-expect (myP )6)

#| Question 3
Create a function called (all-caps)
that takes in a list of Strings
and returns a new list of Strings
where all the words are fully capitalized

Hint: The function (string-upcase)
send a string to all caps

For example,
(all-caps (list "George" "Potassium")) -> (list "GEORGE "POTASSIUM")
|#
;Purpose: get words to full caps
;Signature: function + cond = string
(define (all-caps n)
  (cond
    [(empty? n)  ' ()]
    [(cons? n )( cons
                   (string-upcase (car n))
                   (all-caps(cdr n)))]))
  
(define myN (list hello))
(check-expect (myN )HELLO)  
  

#| Question 4
Create a function called (has-large-numbers?)
that takes in a list of numbers
and returns if the list
contains any numbers greater than 10

For example,
(has-large-numbers? (list 1 2 5 12 41)) -> #true
(has-large-numbers? (list 1 2 4)) -> #false
|#
;Purpose: check if a numbers larger than 10 
;Signature: function + cond = int
(define (has-large n)
  (cond
    [(empty? n) #true]
    [(cons? n )(and 
                   (> (car n)10)
                   (has-large(cdr n)))])) 
  
(define myL (list 1 2 3))
(check-expect (myL )#true)


#| Question 5
Now that we have lists in our toolkit,
we can create a more thorough definition
of a student structure.

Create a new student structure that contains
a name, student id, and a list of grades
that correspond to their classes (ex. 86, 79, 92)

Create at least 2 examples of students
|#


(define-struct student (name id  grades))
(define abdul (make-student "aBDUL" 23 (list 90 78)))
(define john (make-student "john" 3 (list 58 63)))




#| Question 6
Create a function called (get-gpa)
that takes in a student and calculates
their gpa.

Hint: Calculate their GPA by
taking the sum of their grades,
then dividing by the number
of classes they are taking.
You may want to do this in
two seperate functions.
|#

(define (get-gpa grades)
  (cond
    [(empty? grades)0]
    [(cons? grades)(+ ( car grades)
                      (get-gpa (cdr grades)))
                      
    


     ]))

#| Question 7
A "Classroom" contains a
room number, teacher name
and a list of students.

The structure definition for
a classroom has been made for you below:
|#
(define-struct classroom (room teacher students))
#|
Create at least one example of a classroom.

A professor would like to make a function
to identify students that need more help
in their classes.

Create a function called (filter-grades)
that takes in a classroom
and returns a list of students who have
a GPA less than 70.
|#
    