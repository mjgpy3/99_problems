#lang racket

(define (palindrome? xs)
  (equal? (reverse xs) xs))

(display (palindrome? '(a b a)))
(newline)
(display (palindrome? '(b a)))
(newline)
(display (palindrome? '(a)))
(newline)
(display (palindrome? '(a a a b)))
(newline)
(display (palindrome? '()))
(newline)
