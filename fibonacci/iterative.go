package main

import (
  "fmt"
  "time"
  "math/big"
)

func fib(n int64) *big.Int {
  if n < 2 {
    return big.NewInt(n)
  }
  a, b := big.NewInt(0), big.NewInt(1)
  for n--; n > 0; n-- {
    a.Add(a, b)
    a, b = b, a
  }
  return b
}

func wrap(n int64) *big.Int {
  defer timeTrack(time.Now())
  return fib(n)
}

func main() {
  var n int64 = 80000
  var s = fmt.Sprintf("%d", wrap(n))
  fmt.Printf("n=%d, f=%s\n", n, limit(s,10))
}
