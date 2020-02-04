import java.math.BigInteger;

public class iterative {

public static BigInteger itFibN(int n) {
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
  long startTime = System.currentTimeMillis();
  BigInteger fib = itFibN(n);
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
