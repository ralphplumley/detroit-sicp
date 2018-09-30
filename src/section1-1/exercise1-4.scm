#lang sicp

; Exercise 1.4
;
; Observe that our model of evaluation allows for the combinations whose
; operators are compound expressions. Use this observation to describe the 
; behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; To add a and the abs value of b,
;   if b is greater than 0, add a.
;   otherwise, add b.

; The if statement in this procedure will return a different operator 
; depending on the value of b.  
; If b is positive, it is the (+) operator, if it is negative, it is the (-) 
; operator.  
; The procedure will thus return (+ a b) if b is positive, and (- a b) if b 
; is negative.
