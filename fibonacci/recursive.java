import java.math.BigInteger;

public class recursive {

public static BigInteger recFibNBig(final int n) {
  return (n < 2) ? BigInteger.valueOf(n) : recFibNBig(n - 1).add(recFibNBig(n - 2));
}

public static Long recFibNLong(final int n) {
  return (n < 2) ? Long.valueOf(n) : recFibNLong(n - 1) + (recFibNLong(n - 2));
}

public static long recFibN(final int n) {
  return (n < 2) ? n : recFibN(n - 1) + (recFibN(n - 2));
}

public static void main(String... args) {
  int n = 35;
  fibBig(n);
  fibLong(n);
  fib(n);
}

private static void fibBig(int n) {
  long startTime = System.currentTimeMillis();
  BigInteger fib = recFibNBig(n);
  long endTime = System.currentTimeMillis();
  long duration = (endTime - startTime);
  String s = fib.toString();
  String timeReport = String.format("Elapsed time: %d msecs\n", duration);
  String msg = String.format("n=%d, fib=%s\n", n, limit(s, 10));
  System.out.print("* Big\n" + timeReport + msg);
}

private static void fibLong(int n) {
  long startTime = System.currentTimeMillis();
  Long fib = recFibNLong(n);
  long endTime = System.currentTimeMillis();
  long duration = (endTime - startTime);
  String s = fib.toString();
  String timeReport = String.format("Elapsed time: %d msecs\n", duration);
  String msg = String.format("n=%d, fib=%s\n", n, limit(s, 10));
  System.out.print("* Long\n" + timeReport + msg);
}

private static void fib(int n) {
  long startTime = System.currentTimeMillis();
  long fib = recFibN(n);
  long endTime = System.currentTimeMillis();
  long duration = (endTime - startTime);
  String s = Long.valueOf(fib).toString();
  String timeReport = String.format("Elapsed time: %d msecs\n", duration);
  String msg = String.format("n=%d, fib=%s\n", n, limit(s, 10));
  System.out.print("* primitive\n" + timeReport + msg);
}

private static String limit(String s, int maxLen) {
  if (s.length() < maxLen) {
    return s;
  } else {
    return s.substring(0, maxLen) + "+";
  }
}

}
