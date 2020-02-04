import java.math.BigInteger;

public class Iterative {

  private Iterative() {}

private static BigInteger itFibN(int n) {
  if (n < 2) {
    return BigInteger.valueOf(n);
  }
  BigInteger ans = BigInteger.valueOf(0);
  BigInteger n1 = BigInteger.valueOf(0);
  BigInteger n2 = BigInteger.valueOf(1);
  for(n--; n > 0; n--) {
    ans = n1.add(n2);
    n1 = n2;
    n2 = ans;
  }
  return ans;
}


public static void main(String... args) {
  int n = 50000;
  fibBig(n);
}

private static void fibBig(int n) {
  long startTime = System.currentTimeMillis();
  BigInteger fib = itFibN(n);
  long endTime = System.currentTimeMillis();
  String s = fib.toString();
  Utils.report(startTime, endTime, n, s, "* Big");
}

}
