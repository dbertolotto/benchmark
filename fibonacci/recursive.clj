(load-file "utils.clj")

(defn fib-rec [n]
  (case n
    0 0
    1 1
    (+ (fib-rec (- n 1))
       (fib-rec (- n 2)))))

(defn fib-rec-long ^Long [n]
  (case n
    0 0
    1 1
    (+ (fib-rec-long (- n 1))
       (fib-rec-long (- n 2)))))

(defn main []     
  (let [n 37]
    (fibo n fib-rec "* plain")
    (fibo n fib-rec-long "* Long")))

(main)
