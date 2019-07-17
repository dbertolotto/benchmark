(ext:install-c-compiler)
(declaim 
  (optimize (debug 0) 
            (safety 0) 
            (space 0)
            (speed 3)))
(compile-file "iterative.lisp" :system-p t)
(c:build-program "iterative.ecl" :lisp-files '("iterative.o"))
(quit)
