import java.math.BigInteger;

public class recursive {

public static BigInteger recFibN(final int n) {
  return (n < 2) ? BigInteger.valueOf(n) : recFibN(n - 1).add(recFibN(n - 2));
}

public static void main(String... args) {
  int n = 35;
  long startTime = System.currentTimeMillis();
  BigInteger fib = recFibN(n);
  long endTime = System.currentTimeMillis();
  long duration = (endTime - startTime);
  String s = fib.toString();
  String timeReport = String.format("Elapsed time: %d msecs\n", duration);
  String msg = String.format("n=%d, fib=%s\n", n, limit(s, 10));
  System.out.print(timeReport + msg);
}

private static String limit(String s, int maxLen) {
  if (s.length() < maxLen) {
    return s;
  } else {
    return s.substring(0, maxLen) + "+";
  }
}

}
