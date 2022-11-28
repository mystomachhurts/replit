;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Assignment 7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 7 - Structures
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


#| Question 1:
Define a new structure called "address"

An address should have a number, street, and town.

Follow the complete design recipe for data,
including a definition, interpretation,
and appropriate examples to recieve full credit.
|#


;Purpose: write out a address structure
;Statement: address- number string string string
;Interpretation: name is a ranodm name-  number represents the house number- street is a random string- town is a string where the kid lives-
(define-struct address(number street town ))

(define Johnny (make-address 9 "hobbes" "Town" ))
(define Hit (make-address 10 "gere" "Eze"))
(define gio (make-address 122 "fds" "STR"))


#| Question 2:
Fill in the blanks with the correct functions:
|#

; The function to create a new address is: _make-address__
; The function to access the number of an address is: _address-number__
; The function to access the street of an address is: address-street___
; The function to access the town of an address is: _address-town__







#| Question 3:
If a house number is even, it is on the left side of the street.
If a house number is odd, it is on the right side of the street.

Make a function called "street-side" that takes in an address
and returns "Left" if the house is on the left side of the street,
and "Right" if the house is on the right side of the street.

Hint: You can use the functions (odd? num) or (even? num)
to determine is a number is even or odd.
|#
;purpose: TAke a street number and spit out if its left or tight side of the street depending if its even or odd
;signature: function - string- 
(define (street-side address)
  (if (even? (address-number address)) "LEFT" "RIGHT") )


(check-expect (street-side Hit ) "LEFT")
(check-expect (street-side Johnny ) "RIGHT")

#| Question 4:
Define a new structure called "Student"

A student should have a name, gpa and address.
|# 

;purpose: student that has a name gpa and adress
;statement: struct
;interpretati0n:student is the students name -- gpa is the students gpa -- address is the students address
(define-struct student(name gpa address))
(define abdul (make-student "abdul" 2.9 Johnny)
(define joe (make-student "joe" 2.2 Hit))




#| Question 5:
Two students are neighbors if they live on the same street
and within 20 house numbers of eachother.

Create a function called "neighbors?" that takes in two students
and returns if they are neighbors.
|#

;Purpose:
;Statement:

(define (neighbors st1 st2)
 (if(and (string=? (address-street(student-address st1))
            (address-street(student-address st2))
            (- address-number (student-address st1 st2))
            
    

  
            
                             


                       
#| Bonus Question:
Create a structure called "coordinate"
that has an x value and y value.

Create a function called "distance-formula"
that takes in two coordinates and calculates
the distance between them.

Hint: If two points are (x1, y1), (x2, y2),
the distance between them is
(sqrt ((x2 - x1)^2 + (y2 - y1)^2))
|#