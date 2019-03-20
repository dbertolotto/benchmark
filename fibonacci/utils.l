(de limit (s l)
   (if (<= (length s) l)
      s
      (intern (pack (head l (chop s)) '+))))
