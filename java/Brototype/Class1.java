import java.util.Scanner;

public class Class1 {
    public static void main(String[] args) {
      Sample s1 = new Sample();
      Sample s2 = new Sample();

      Scanner sc = new Scanner(System.in);
      System.out.println("Enter 4 numbers");
      s1.a = sc.nextInt();
      s1.b = sc.nextInt();
      
      s2.a = sc.nextInt();
      s2.b = sc.nextInt();

      System.out.println(s1.a+s1.b +"   "+ (s2.a+s2.b));
      sc.close();

    }
}

class Sample {
    int a;
    int b;
}
