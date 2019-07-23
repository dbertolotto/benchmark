(defn fib-iter [n]  
    (let [fib (map first (iterate (fn [[a b]] [b (+' a b)]) [0 1]))]
      (nth fib n)))

(defn limit [o l]
  (let [s (str o)
        c (count s)]
    (if (> c l)
      (str (subs s 0 l) "+")
      s)))

(defn main []
  (let [n 50000
      fib (time (fib-iter n))]
    (println 
      (format "n=%d, fib=%s" n (limit fib 10)))))

(main)
