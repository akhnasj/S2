import java.util.Scanner;

// Using Constructor and static method (toString())
public class Complex{
    double x;
    double y;

    Complex(double x, double y){
        this.x = x;
        this.y = y;
    }

    public String toString(){
        return x +" + "+ y +"i";
    }
    public static Complex sum(Complex c1, Complex c2) {
        return new Complex(c1.x + c2.x, c1.y + c2.y);
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the real and imaginary part of number 1: ");
        Complex complex1 = new Complex(sc.nextDouble(), sc.nextDouble());

        System.out.println("Enter the real and imaginary part of number 2: ");
        Complex complex2 = new Complex(sc.nextDouble(), sc.nextDouble());

        Complex res = sum(complex1, complex2);
        System.out.println("Sum of 2 complex numbers: ");
        System.out.println(res);
    }
}

// Using Constructor and a method
public class Complex {
    double x;
    double y;

    // Default Constructor
    Complex() {}


    Complex(double x, double y){
        this.x = x;
        this.y = y;  
    }

    void sum(Complex complex1, Complex complex2){
        this.x = complex1.x + complex2.x;
        this.y = complex1.y + complex2.y;
        System.out.println("Sum of complex numbers: ");
        System.out.println(this.x +" + "+ this.y +"i");
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the real and complex part of number 1: ");
        double x = sc.nextDouble();
        double y = sc.nextDouble();
        Complex complex1 = new Complex(x, y);

        System.out.println("Enter the real and complex part of number 2: ");
        Complex complex2 = new Complex(sc.nextDouble(), sc.nextDouble());

        sc.close();

        Complex complex3 = new Complex();
        complex3.sum(complex1, complex2);
    }
}


// Passing Scanner to constructor
public class Complex {
    double x;
    double y;

    // Default Constructor
    Complex() {}

    // Constructor to read complex numbers
    Complex(Scanner sc){
        System.out.println("Enter the real and complex part of number: ");
        this.x = sc.nextDouble();
        this.y = sc.nextDouble();  
    }

    void sum(Complex complex1, Complex complex2){
        this.x = complex1.x + complex2.x;
        this.y = complex1.y + complex2.y;
        System.out.println("Sum of complex numbers: ");
        System.out.println(this.x +" + "+ this.y +"i");
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Complex complex1 = new Complex(sc);
        Complex complex2 = new Complex(sc);

        Complex complex3 = new Complex();
        complex3.sum(complex1, complex2);
    }
}



// 