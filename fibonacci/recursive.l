(load "utils.l")

(de fibo (N)
   (if (>= 2 N)
      1
      (+ (fibo (- N 1)) (fibo (- N 2)))))

(let n 37 
   (println 'n n 
            'fib (limit (bench (fibo n)) 10)))

(bye)
