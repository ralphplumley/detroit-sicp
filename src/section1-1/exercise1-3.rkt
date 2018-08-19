#lang sicp

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
