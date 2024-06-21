import java.util.Scanner;

public class Function {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter 2 numbers: ");
        int x = sc.nextInt();
        int y = sc.nextInt();
        int result = sum(x,y);
        System.out.println(result); 
        sc.close();

    }

    static int sum(int a, int b) {
        int result = a + b;
        return result;
    }

}
