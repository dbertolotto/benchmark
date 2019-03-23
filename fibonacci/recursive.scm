(import
  scheme
  chicken.time
  chicken.format
  chicken.string)

(define (fib-rec n)
  (if (< n 2)
      n
      (+ (fib-rec (- n 1))
         (fib-rec (- n 2)))))

(define (limit s l)
  (if (<= (length (string-chop s 1)) l)
      s
      (conc (car (string-chop s l)) "+")))

(let* ((n 35)
       (fib (time (fib-rec n)))
       (fibl (limit (format "~A" fib) 10)))
  (format #t "n=~A fib=~A~%" n fibl))

;(exit)
