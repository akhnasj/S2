import java.util.Scanner;

public class Class2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter numbers");
        Sample s1 = new Sample();
        Sample s2 = new Sample();

        s1.a = sc.nextInt();
        s1.b = sc.nextInt();

        s2.a = sc.nextInt();
        s2.b = sc.nextInt();

        s1.display();
        s2.display();

        sc.close();
    }
}


class Sample {
    int a,b,c;

    void calculatesum() {
        c = a + b;
    }

    void display() {
        calculatesum();
        System.out.println("Sum is "+c);
    }
}

