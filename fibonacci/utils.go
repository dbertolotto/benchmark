package main

import (
  "fmt"
  "time"
)

func limit(s string, l int) string {
    if len(s) < l {
        return s
    }
    return s[:l] + "+"
}

func timeTrack(start time.Time) {
  elapsed := time.Since(start)
  fmt.Printf("%.3f sec; ", float64(elapsed.Nanoseconds())/1.0e9)
}
