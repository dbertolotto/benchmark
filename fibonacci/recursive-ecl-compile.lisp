(ext:install-c-compiler)
(declaim 
  (optimize (debug 0)
            (safety 0)
            (space 0)
            (speed 3)))
(compile-file "recursive.lisp" :system-p t)
(c:build-program "recursive.ecl" :lisp-files '("recursive.o"))
(quit)
