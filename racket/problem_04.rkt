#lang racket

(define (my-count xs)
  (foldl (λ (_ x) (+ 1 x)) 0 xs))

(display (my-count '()))
(newline)
(display (my-count '(42)))
(newline)
(display (my-count '(42 42)))
(newline)
(display (my-count '(42 42 42)))
(newline)
