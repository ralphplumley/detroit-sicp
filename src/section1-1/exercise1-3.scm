#lang sicp

; Exercise 1.3
;
; Define a procedure that takes three numbers as arguments and returns the sum 
; of the squares of the two larger numbers

; I wish I knew how to separate out a procedure to return the 2 largest 
; numbers from a list of 3

(define (sum-of-2-biggest-squares a b c)
  (cond
    ((and (<= a b) (<= a c)) (sum-of-squares b c))
    ((and (<= b c) (<= b a)) (sum-of-squares a c))
    ((and (<= c a) (<= c b)) (sum-of-squares a b)))
  )

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (square x)
  (* x x))
