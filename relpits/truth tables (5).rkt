;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Assignment 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 5 - Truth Tables and Cond
Submit on Google Classroom by the end of class.

If a question asks you to make a function,
it must follow the complete design recipe
including a purpose statement, signature
and appropriate tests to recieve full credit
|#

; Question 1
; Complete the following truth table:
#|
---------------------
| P | Q | (and P Q) |
| #t| #t|      t    |
| #t| #f|      f    |
| #f| #t|      f    |
| #f| #f|      f    |
---------------------
|#

; Question 2
; Complete the following truth table:

#|
-------------------------------------
| P | Q | (not P) | (and (not P) Q)) |
| #t| #t|    f    |        t         |
| #t| #f|    f    |        t         |
| #f| #t|    t    |        f         |
| #f| #f|    t    |        f         |
--------------------------------------
|#

; Question 3
; Complete the following truth table:

#|
--------------------------------------------------------
| P | Q | (and P Q) | (not P) | (or (not P) (and P Q)) |
| #t| #t|    t      |    f    |           t            |
| #t| #f|    f      |    f    |           f            |        
| #f| #t|    t      |    t    |           t            |       
| #f| #f|    f      |    t    |           t            |        
----------------------wsa----------------------------------
|#

#| Question 5:
Make a function called "num-cond" that takes in 2 numbers.
If the first number is bigger, subtract the two numbers.
If the second number is bigger, multiply the two numbers.
If they are the same number, simply return that number.
|#
;Purpose statement:2 numbers that subtractfirst, multiply second, spit it out if equal
;Sign: define, cond, if more = int
(define(num-cond a b)
  (cond
    [(< a b) (- a b)]
    [(< b a) (* b a)]
    [(= a b) a ]))


#| Question 6:
Make a function called "super-cond" that takes in 3 numbers.
If all three numbers are negative, return 0
If the first two numbers are negative, return 1
If the first and third numbers are negative, return 2.
If the second and third numbers are negative, return 3.
If all of the numbers are positive, return the product of all 3 numbers.
|#
;Pstatement: Make a group of 3 numbers spit of 1 2 3 or mujltiply them if they are negative or not
;sign:
(define (super-cond a b c)
  (cond
    [(and (< a 0) (< b 0) (< c 0)) 0]
    [(and (< a 0) (< b 0) (> c 0)) 1]
    [(and (< a 0) (> b 0) (< c 0)) 2]
    [(and (> a 0) (< b 0) (> c 0)) 3]
    [else(* a b c)]))
(check-expect (super-cond -1 -2 -2) 0)
(check-expect (super-cond -1 -2 2) 1)
(check-expect (super-cond -1 2 -2) 2)
(check-expect (super-cond 1 -2 2) 3)
(check-expect (super-cond 1 3 2) 6)
#| Bonus Question:
Make a function called "vowel-check" that takes in 1 string.
If the function contains a vowel, return the first vowel the string contains.
If the function contains no vowels, return "No Vowels".

For example,
(vowel-check "airplane") -> "a"
(vowel-check "bear") -> "e"
(vowel-check "xyz") -> "No Vowels"
|#