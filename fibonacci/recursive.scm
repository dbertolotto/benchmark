(import
  scheme
  chicken.time
  chicken.format)

(load "utils.scm")

(define (fib-rec n)
  (if (< n 2)
      n
      (+ (fib-rec (- n 1))
         (fib-rec (- n 2)))))

(let* ((n 37)
       (fib (time (fib-rec n)))
       (fibl (limit (format "~A" fib) 10)))
  (format #t "n=~A fib=~A~%" n fibl))

;(exit)
