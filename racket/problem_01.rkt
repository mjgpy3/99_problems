#lang racket

(define (my-last xs)
  (if (null? (cdr xs))
    xs
    (my-last (cdr xs))))

(display (my-last '(a b c 42)))
(newline)
(display (my-last '(42)))
(newline)
(display (my-last '()))
