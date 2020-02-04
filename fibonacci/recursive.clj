(load-file "utils.clj")

(defn fib-rec [n]
  (case n
    0 0
    1 1
    (+ (fib-rec (- n 1))
       (fib-rec (- n 2)))))

(defn ^Long fib-rec-long [n]
  (case n
    0 0
    1 1
    (+ (fib-rec-long (- n 1))
       (fib-rec-long (- n 2)))))

(defn fibo [n f s]
  (println s)
  (let [fib (time (f n))]     
    (println
      (format "n=%d, fib=%s" n (limit fib 10)))))

(defn main []     
  (let [n 35]
    (fibo n fib-rec "* plain")
    (fibo n fib-rec-long "*Long")))

(main)
