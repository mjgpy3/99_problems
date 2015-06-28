#lang racket

(define (my-but-last xs)
  (if (null? (cddr xs))
    xs
    (my-but-last (cdr xs))))

(display (my-but-last '(1 3 4 2)))
(newline)
(display (my-but-last '(4 2)))
(newline)
(display (my-but-last '(4)))
