import java.util.Scanner;

public class Triangle {
    public static void main(String[] args) {
        double x;
        double y;
        
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter side x: ");
        x = scanner.nextDouble();

        System.out.println("Enter y: ");
        y = scanner.nextDouble();

        double z = Math.sqrt((x*x)+(y*y));

        System.out.println("Hypotenuse: "+z);

        scanner.close();
    }
    
} 
