package main

import (
  "fmt"
  "time"
)

func fib(n int) int {
  if n < 2 {
    return n
  }
  return fib(n - 1) + fib(n - 2)
}

func wrap(n int) int {
  defer timeTrack(time.Now())
  return fib(n)
}

func main() {
  var n int = 35
  fmt.Printf("n=%d, f=%d\n", n, wrap(35))
}
