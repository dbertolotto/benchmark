(load "utils.l")

(de fibo (N)
   (let (A 0  B 1)
      (do N
         (prog1 B (setq B (+ A B) A @)))))

(let n 50000
  (println 'n n 
           'fib (limit (bench (fibo n)) 10)))

(bye)
