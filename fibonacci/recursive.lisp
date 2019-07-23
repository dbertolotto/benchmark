(load "utils.lisp")

(defun fib-rec (n)
  (if (< n 2)
    n
    (+ (fib-rec (- n 2)) (fib-rec (- n 1)))))

(let* ((n 35)
       (fib (time (fib-rec n)))
       (fibl (limit (format nil "~A" fib) 10)))
  (format t "n=~A fib=~A~%" n fibl))

(quit)
