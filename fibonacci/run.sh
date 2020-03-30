MSG_NOT_FOUND="...not found"
MSG_PIL="-- picolisp"
MSG_PYT="-- python"
MSG_GOL="-- go"
MSG_CSI="-- chicken (interpreted)"
MSG_CSC="-- chicken (compiled)"
MSG_ECL="-- ecl"
MSG_CLJ="-- clojure"
MSG_JAV="-- java"

echo "*** version"

echo $MSG_PIL
if command -v pil; then
  PIL_EXE=pil
  $PIL_EXE -version -bye
else
  echo $MSG_NOT_FOUND
fi

echo $MSG_PYT
if command -v python3; then
  PYT_EXE=python3
  $PYT_EXE --version
elif command -v python2; then
  PYT_EXE=python2
  $PYT_EXE --version
elif command -v python; then
  PYT_EXE=python
  $PYT_EXE --version
else
  echo $MSG_NOT_FOUND
fi

echo $MSG_GOL
if command -v go; then
  GOL_EXE=go
  $GOL_EXE version
else
  echo $MSG_NOT_FOUND
fi

echo $MSG_CSI
if command -v csi; then
  CSI_EXE=csi
  $CSI_EXE -release
else
  echo $MSG_NOT_FOUND
fi

echo $MSG_CSC
if command -v csc; then
  CSC_EXE=csi
  $CSC_EXE -release
else
  echo $MSG_NOT_FOUND
fi

echo $MSG_ECL
if command -v ecl; then
  ECL_EXE=ecl
  $ECL_EXE --version
else
  echo $MSG_NOT_FOUND
fi

echo $MSG_CLJ
if command -v clojure; then
  clojure -e "(println (clojure-version))"
  CLJ_EXE=clojure
else
  echo $MSG_NOT_FOUND
fi

echo $MSG_JAV
if command -v java; then
  JAV_EXE=java
  $JAV_EXE --version | head -1
  javac *.java
else
  echo $MSG_NOT_FOUND
fi

echo
echo "*** recursive"

if [ -v PIL_EXE ]; then
  echo $MSG_PIL
  $PIL_EXE recursive.l +
fi

if [ -v PYT_EXE ]; then
  echo $MSG_PYT
  $PYT_EXE recursive.py
fi

if [ -v GOL_EXE ]; then
  echo $MSG_GOL
  $GOL_EXE run utils.go recursive.go
fi

if [ -v CSI_EXE ]; then
  echo $MSG_CSI
  $CSI_EXE -q -b recursive.scm
fi

if [ -v CSC_EXE ]; then
  echo $MSG_CSC
  $CSC_EXE -O5 recursive.scm -o recursive.cs 1>/dev/null 2>/dev/null
  ./recursive.cs
fi

if [ -v ECL_EXE ]; then
  echo "$MSG_ECL (interpreted)"
  $ECL_EXE -norc -load recursive.lisp
fi

if [ -v ECL_EXE ]; then
  echo "$MSG_ECL (compiled - fasl)"
  $ECL_EXE -norc -compile recursive.lisp 1>/dev/null 2>/dev/null
  $ECL_EXE -norc -load recursive.fas
fi

if [ -v ECL_EXE ]; then
  echo "$MSG_ECL (compiled - exe)"
  $ECL_EXE -norc -load recursive-ecl-compile.lisp 1>/dev/null 2>/dev/null
  ./recursive.ecl
fi

if [ -v CLJ_EXE ]; then
  echo $MSG_CLJ
  $CLJ_EXE recursive.clj
fi

if [ -v JAV_EXE ]; then
  echo $MSG_JAV
  $JAV_EXE Recursive
fi

echo
echo "*** recursive w/ cache"

if [ -v PIL_EXE ]; then
  echo $MSG_PIL
  $PIL_EXE recursive-cache.l +
fi

if [ -v PYT_EXE ]; then
  echo $MSG_PYT
  $PYT_EXE recursive-cache.py
fi

echo
echo "*** recursive (recur)"

if [ -v PIL_EXE ]; then
  echo $MSG_PIL
  $PIL_EXE recursive-recur.l +
fi

echo
echo "*** recursive (improved)"

if [ -v PIL_EXE ]; then
  echo $MSG_PIL
  $PIL_EXE recursive-better.l +
fi

if [ -v PYT_EXE ]; then
  echo $MSG_PYT
  $PYT_EXE recursive-better.py
fi

echo
echo "*** iterative"

if [ -v PIL_EXE ]; then
  echo $MSG_PIL
  $PIL_EXE iterative.l +
fi

if [ -v PYT_EXE ]; then
  echo $MSG_PYT
  $PYT_EXE iterative.py
fi

if [ -v GOL_EXE ]; then
  echo $MSG_GOL
  $GOL_EXE run utils.go iterative.go
fi

if [ -v CSI_EXE ]; then
  echo $MSG_CSI
  $CSI_EXE -q -b iterative.scm
fi

if [ -v CSC_EXE ]; then
  echo $MSG_CSC
  $CSC_EXE -O5 iterative.scm -o iterative.cs 1>/dev/null 2>/dev/null
  ./iterative.cs
fi

if [ -v ECL_EXE ]; then
  echo "$MSG_ECL (interpreted)"
  $ECL_EXE -norc -load iterative.lisp
fi

if [ -v ECL_EXE ]; then
  echo "$MSG_ECL (compiled - fasl)"
  $ECL_EXE -norc -compile iterative.lisp 1>/dev/null 2>/dev/null
  $ECL_EXE -norc -load iterative.fas
fi

if [ -v ECL_EXE ]; then
  echo "$MSG_ECL (compiled - exe)"
  $ECL_EXE -norc -load iterative-ecl-compile.lisp 1>/dev/null 2>/dev/null
  ./iterative.ecl
fi

if [ -v CLJ_EXE ]; then
  echo $MSG_CLJ
  $CLJ_EXE iterative.clj
fi

if [ -v JAV_EXE ]; then
  echo $MSG_JAV
  $JAV_EXE Iterative
fi
