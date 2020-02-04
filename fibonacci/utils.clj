(defn limit [o l]                                 
  (let [s (str o)
        c (count s)]
    (if (> c l)               
      (str (subs s 0 (- l 1)) "+")      
      s)))

(defn fibo [n f msg]
  (println msg)
  (let [fib (time (f n))]
    (println 
      (format "n=%d, fib=%s" n (limit fib 10)))))
