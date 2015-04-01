#lang planet neil/sicp

(define (abs x)
  (if (< x 0) (- x)
      x))

(define (good-enough? guess input)
  (< (abs (- guess (improve guess input))) (* guess 0.00001)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess input)
  (average guess (/ input guess)))

(define (square-root-iter guess input)
  (if (good-enough? guess input) guess
      (square-root-iter (improve guess input) input)))

(define (square-root x)
  (square-root-iter 1 x))

;; Testing

(= (square-root 4) 2)
(= (square-root 225) 15)
