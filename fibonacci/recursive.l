(load "utils.l")

(de fibo (N)
   (if (>= 2 N)
      1
      (+ (fibo (dec N)) (fibo (- N 2)))))

(let n 35
   (println 'n n 
            'fib (limit (bench (fibo n)) 10)))

(bye)
