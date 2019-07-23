(defn limit [o l]                                 
  (let [s (str o)
        c (count s)]
    (if (> c l)               
      (str (subs s 0 (- l 1)) "+")      
      s)))
