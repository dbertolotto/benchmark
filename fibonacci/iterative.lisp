(defun fib-iter (n)
  (let ((a 0) (b 1) (c n))
    (loop for i from 2 to n do
          (setq c (+ a b)
                a b
                b c))
    c))

(defun limit (s l)
  (if (<= (length s) l)
      s
      (concatenate 'string (subseq s 0 (- l 1)) "+")))

(let* ((n 50000)
       (fib (time (fib-iter n)))
       (fibl (limit (format nil "~A" fib) 10)))
  (format t "n=~A fib=~A~%" n fibl))

(quit)
