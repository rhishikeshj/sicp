#lang planet neil/sicp

(define (abs x)
  (if (< x 0) (- x)
      x))

(define (good-enough? guess input)
  (< (abs (- guess (improve guess input)))
     (* guess 0.00001)))

(define (square y)
  (* y y))

(define (improve guess input)
  (/ (+ (/ input (square guess))
        (* 2 guess))
     3))

(define (cube-root-iter guess input)
  (if (good-enough? guess input) guess
      (cube-root-iter (improve guess input) input)))

(define (cube-root x)
  (cube-root-iter 1 x))

;; Testing

(= (cube-root 8) 2)
(= (cube-root 64) 4)
