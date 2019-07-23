(defun limit (s l)
  (if (<= (length s) l)
      s
      (concatenate 'string (subseq s 0 (- l 1)) "+")))
