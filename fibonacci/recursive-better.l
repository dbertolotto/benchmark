(de fibo-rec (A,B,C)
   (if (< C 1)
      A
      (fibo-rec B (+ A B) (- C 1))))

(de fibo (N)
   (fibo-rec 0 1 N))

(bench
   (fibo 10000))

(bye)
