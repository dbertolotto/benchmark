public class Utils {

  private Utils() {}

  private static String limit(String s, int maxLen) {
    if (s.length() < maxLen) {
      return s;
    } else {
      return s.substring(0, maxLen) + "+";
    }
  }

  static void report(long startTime, long endTime, int n, String value, String message) {
    long duration = (endTime - startTime);
    String timeReport = String.format("Elapsed time: %d msecs\n", duration);                          
    String result = String.format("n=%d, fib=%s\n", n, limit(value, 10));
    System.out.print(message + "\n" + timeReport + result);
  }
}
