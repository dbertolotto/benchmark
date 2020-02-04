public class iterative {

public static long itFibN(int n) {
 if (n < 2)
  return n;
 long ans = 0;
 long n1 = 0;
 long n2 = 1;
 for(n--; n > 0; n--)
 {
  ans = n1 + n2;
  n1 = n2;
  n2 = ans;
 }
 return ans;
}


public static void main(String... args) {
  int n = 5;
  String s = String.format("%d", itFibN(n));
  String msg = String.format("n=%d, f=%10s\n", n, s);
  System.out.print(msg);
}

}
