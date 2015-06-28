#lang racket

(define (my-reverse xs)
  (define (aux ys acc)
    (if (null? ys)
      acc
      (aux (cdr ys) (cons (car ys) acc))))
  (aux xs '()))

(display (my-reverse '()))
(newline)
(display (my-reverse '(42)))
(newline)
(display (my-reverse '(2 1)))
(newline)
(display (my-reverse '(3 2 1)))
(newline)
(display (my-reverse '(4 3 2 1)))
(newline)
