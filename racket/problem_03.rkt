#lang racket

(define (element-at xs k)
  (if (eq? k 1)
    (car xs)
    (element-at (cdr xs) (- k 1))))

(display (element-at '(1 2 3 42 5) 4))
(newline)
(display (element-at '(42 2 3) 1))
(newline)
(display (element-at '(1 2 42) 3))
(newline)
(display (element-at '(42 2 3) 5))
