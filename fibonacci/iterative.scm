(import
  scheme
  chicken.time
  chicken.format
  chicken.string)

(define (fib-iter n)
    (do ((num 2 (+ num 1))
       (fib-prev 1 fib)
       (fib 1 (+ fib fib-prev)))
      ((>= num n) fib)))

(define (limit s l)
  (if (<= (length (string-chop s 1)) l)
      s
      (conc (car (string-chop s l)) "+")))

(let* ((n 50000)
       (fib (time (fib-iter n)))
       (fibl (limit (format "~A" fib) 10)))
  (format #t "n=~A fib=~A~%" n fibl))

;(exit)
