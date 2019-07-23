(import
  scheme
  chicken.time
  chicken.format)

(load "utils.scm")

(define (fib-iter n)
    (do ((num 2 (+ num 1))
       (fib-prev 1 fib)
       (fib 1 (+ fib fib-prev)))
      ((>= num n) fib)))

(let* ((n 50000)
       (fib (time (fib-iter n)))
       (fibl (limit (format "~A" fib) 10)))
  (format #t "n=~A fib=~A~%" n fibl))

;(exit)
