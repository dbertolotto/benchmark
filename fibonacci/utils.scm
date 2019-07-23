(import
  scheme
  chicken.string)

(define (limit s l)
  (if (<= (length (string-chop s 1)) l)
      s
      (conc (car (string-chop s (- l 1))) "+")))
