import java.math.BigInteger;

public class Recursive {

  private Recursive() {}

private static BigInteger recFibNBig(final int n) {
  return (n < 2) ? BigInteger.valueOf(n) : recFibNBig(n - 1).add(recFibNBig(n - 2));
}

private static Long recFibNLong(final int n) {
  return (n < 2) ? Long.valueOf(n) : recFibNLong(n - 1) + (recFibNLong(n - 2));
}

private static long recFibN(final int n) {
  return (n < 2) ? n : recFibN(n - 1) + (recFibN(n - 2));
}

public static void main(String... args) {
  int n = 37;
  fibBig(n);
  fibLong(n);
  fib(n);
}

private static void fibBig(int n) {
  long startTime = System.currentTimeMillis();
  BigInteger fib = recFibNBig(n);
  long endTime = System.currentTimeMillis();
  String s = fib.toString();
  Utils.report(startTime, endTime, n, s, "* Big");
}

private static void fibLong(int n) {
  long startTime = System.currentTimeMillis();
  Long fib = recFibNLong(n);
  long endTime = System.currentTimeMillis();
  String s = fib.toString();
  Utils.report(startTime, endTime, n, s, "* Long");
}

private static void fib(int n) {
  long startTime = System.currentTimeMillis();
  long fib = recFibN(n);
  long endTime = System.currentTimeMillis();
  String s = Long.valueOf(fib).toString();
  Utils.report(startTime, endTime, n, s, "* primitive");
}

}
