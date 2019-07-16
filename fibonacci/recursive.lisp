(defun fib-rec (n)
  (if (< n 2)
    n
    (+ (fib-rec (- n 2)) (fib-rec (- n 1)))))

(defun limit (s l)
  (if (<= (length s) l)
      s
      (concatenate 'string (subseq s 0 (- l 1)) "+")))

(let* ((n 35)
       (fib (time (fib-rec n)))
       (fibl (limit (format nil "~A" fib) 10)))
  (format t "n=~A fib=~A~%" n fibl))

(quit)
