import java.util.Scanner;

public class DoWhile {
    public static void main(String[] args) {
        
          Scanner scanner = new Scanner(System.in);
        String name = "";

        do {           // executes the loop atleast once and then check the condition
            System.out.println("Enter your name: ");
            name = scanner.nextLine();
        } while (name.isBlank());

        System.out.println("Hello "+name);

        scanner.close();
    }
}
