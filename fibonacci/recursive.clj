(defn fib-rec [n]
  (case n
    0 0
    1 1
    (+ (fib-rec (- n 1))
       (fib-rec (- n 2)))))

(defn limit [o l]                                 
  (let [s (str o)
        c (count s)]
    (if (> c l)               
      (str (subs s 0 l) "+")      
      s)))

(defn main []
  (let [n 35                           
        fib (time (fib-rec n))]            
    (println
      (format "n=%d, fib=%s" n (limit fib 10)))))

(main)
