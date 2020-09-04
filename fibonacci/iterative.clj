(load-file "utils.clj")

(defn fib-iter [n]
    (let [f (fn [[a b]] [b (+' a b)])
          fib (map first (iterate f [0 1]))]
      (nth fib n)))

(defn main []
  (let [n 80000]
    (fibo n fib-iter "* plain")))

(main)
